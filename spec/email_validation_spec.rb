require 'spec_helper'

def create_accounts(email, password)
  fill_in 'Email', :with => email
  fill_in 'Password', :with => password
  fill_in 'Password confirmation', :with => password
end

describe "Sign up", :type => :feature do
  context "valid email" do
    valid_emails = [
      'email@domain.com',
      'firstname.lastname@domain.com',
      'email@subdomain.domain.com',
      'firstname+lastname@domain.com',
      'email@123.123.123.123',
      'email@[123.123.123.123]',
      '"email"@domain.com',
      '1234567890@domain.com',
      'email@domain-one.com',
      '_______@domain.com',
      'email@domain.name',
      'email@domain.co.jp',
      'firstname-lastname@domain.com'
    ]
    
    valid_emails.each do |email|
      it "Students" do
        visit new_student_registration_path
        within("#new_student") do
          create_accounts(email, "password")
        end
        click_button 'Sign up'
        expect(page).to have_content 'Welcome! You have signed up successfully'
      end
    end
    
    valid_emails.each do |email|
      it "Mentors" do
        visit new_mentor_registration_path
        within("#new_mentor") do
         create_accounts(email, "password")
        end
        click_button 'Sign up'
        expect(page).to have_content 'Welcome! You have signed up successfully'
      end
    end 
  end
  
  context "invalid emails" do
    invalid_emails = [
      'Invalid Email',
      'plainaddress',	
      '#@%^%#$@#$@#.com',
      '@domain.com',
      'Joe Smith <email@domain.com>',
      'email.domain.com',
      'email@domain@domain.com'
      # need to figure out how to add more email vaildations winthin devise to handle the following emails
      # '.email@domain.com'
      # 'email.@domain.com'
      # 'email..email@domain.com'
      # 'あいうえお@domain.com'
      # 'email@domain.com (Joe Smith)',
      # 'email@domain',
      # 'email@-domain.com',
      # 'email@domain.web',
      # 'email@111.222.333.44444',
      # 'email@domain..com'
    ]

    #empty is a special case that throws 2 errors
    context "empty email" do
      it "Students" do
        visit new_student_registration_path
        within("#new_student") do
          create_accounts("", "password")
        end
        click_button 'Sign up'
        expect(page).to have_content '2 errors prohibited this student from being saved'
      end
      it "Mentors" do
        visit new_mentor_registration_path
        within("#new_mentor") do
          create_accounts("", "password")
        end
        click_button 'Sign up'
        expect(page).to have_content '2 errors prohibited this mentor from being saved'
      end
    end

    invalid_emails.each do |email|
      it "Students" do
        visit new_student_registration_path
        within("#new_student") do
          create_accounts(email, "password")
        end
        click_button 'Sign up'
        puts email
        expect(page).to have_content 'error prohibited this student from being saved'
      end
    end
    
    invalid_emails.each do |email|
      it "Mentors" do
        visit new_mentor_registration_path
        within("#new_mentor") do
          create_accounts(email, "password")
        end
        click_button 'Sign up'
        expect(page).to have_content 'error prohibited this mentor from being saved'
      end
    end 
  end
    
end
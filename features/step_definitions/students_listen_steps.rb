Given (/^I am logged in as a "(.*)"$/) do |user|
  step 'a student with email "email@gmail.com" and password "password" exists'
  visit '/students/sign_in'
  fill_in 'Email', :with => 'email@gmail.com'
  fill_in 'Password', :with => 'password'
  click_button 'Log in'
  if page.respond_to? :should
    page.should have_content('China US Cultural Exchange Center')
  else
    assert page.has_content?('China US Cultural Exchange Center')
  end
end

Given(/^there is (?: a|an) "([^"]*)" file for "([^"]*)"$/) do |content, feature|
  step 'I should see "audio file of the day"'
end

Then(/^I should hear audio playing$/) do 
    pending
end
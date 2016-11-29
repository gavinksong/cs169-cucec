Given /^there exists a conversation between student "(.*)" and mentor "(.*)"$/ do |student, mentor|
  step "a student with email \"#{student}\" and password \"foobar\" exists"
  step "a mentor with email \"#{mentor}\" and password \"foobar\" exists"
  # TODO: Create a conversation between them


end

Given /^there exists a mentor who is also available to chat$/ do
   m = Mentor.create!({:email => "email@gmail.com", :password => "mypassword", :password_confirmation => "mypassword" })
   visit new_mentor_session_path
   # byebug
   fill_in 'Email', :with => 'email@gmail.com'
   fill_in 'Password', :with => 'mypassword'
   click_button 'Log in'
   m.is_available = 1
   m.save!
end

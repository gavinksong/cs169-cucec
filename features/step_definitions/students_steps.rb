Given /^I am logged in as a student$/ do
  step 'a student with email "email@gmail.com" and password "mypassword" exists'
  visit new_student_session_path
  fill_in 'Email', :with => 'email@gmail.com'
  fill_in 'Password', :with => 'mypassword'
  click_button 'Log in'
  if page.respond_to? :should
    step 'I should be on the student dashboard page'
  else
    step 'I should be on the student dashboard page'
  end
end
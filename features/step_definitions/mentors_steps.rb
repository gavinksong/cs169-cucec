Given /^I am logged in as a mentor$/ do
  step 'a mentor with email "email@gmail.com" and password "mypassword" exists'
  visit '/mentors/sign_in'
  fill_in 'Email', :with => 'email@gmail.com'
  fill_in 'Password', :with => 'mypassword'
  click_button 'Log in'
  if page.respond_to? :should
    step 'I should be on the mentor dashboard page'
  else
    step 'I should be on the mentor dashboard page'
  end
end
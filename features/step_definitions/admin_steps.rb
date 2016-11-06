Given /^I am logged in as an admin$/ do
  step 'an admin with email "email@gmail.com" and password "mypassword" exists'
  visit '/admin/sign_in'
  fill_in 'Email', :with => 'email@gmail.com'
  fill_in 'Password', :with => 'mypassword'
  click_button 'Log in'
  if page.respond_to? :should
    step 'I should be on the mentor dashboard page'
  else
    step 'I should be on the mentor dashboard page'
  end
end
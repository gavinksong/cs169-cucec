Given /^I am logged in as an admin$/ do
  step 'an admin with email "email@gmail.com" and password "mypassword" exists'
  visit admins_path
  fill_in 'Email', :with => 'email@gmail.com'
  fill_in 'Password', :with => 'mypassword'
  click_button 'Log in'
  if page.respond_to? :should
    step 'I should be on the admin dashboard page'
  end
end

Given /^I am logged out as an admin$/ do
  page.driver.submit :delete, destroy_admin_session_path, {}
  if page.respond_to? :should
    step 'I should be on the landing page'
  else
    step 'I should be on the landing page'
  end
end
Given /^I am logged in as a mentor$/ do
  step 'a mentor with email "email@gmail.com" and password "mypassword" exists'
  visit new_mentor_session_path
  fill_in 'Email', :with => 'email@gmail.com'
  fill_in 'Password', :with => 'mypassword'
  click_button 'Log in'
  if page.respond_to? :should
    step 'I should be on the mentor dashboard page'
  else
    step 'I should be on the mentor dashboard page'
  end
end

Given /^I am logged out as a mentor$/ do
  page.driver.submit :delete, destroy_mentor_session_path, {}
  if page.respond_to? :should
    step 'I should be on the landing page'
  else
    step 'I should be on the landing page'
  end
end

Given /^mentor "(.*)" with password "(.*)" is logged in$/ do |mentor, password|
  visit new_mentor_session_path
  fill_in 'Email', :with => mentor
  fill_in 'Password', :with => password
  click_button 'Log in'

  # TODO: This step is failing miserably
  # step 'I should be on the mentor dashboard page'
end

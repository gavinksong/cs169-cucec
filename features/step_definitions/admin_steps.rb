
Given /^I am logged in as an admin$/ do
  step 'an admin with email "email@gmail.com" and password "mypassword" exists'
  visit '/admins'
  fill_in 'Email', :with => 'email@gmail.com'
  fill_in 'Password', :with => 'mypassword'
  click_button 'Log in'
  if page.respond_to? :should
    step 'I should be on the admin dashboard page'
  end
=======
When(/^I upload a file$/) do
  pending # Write code here that turns the phrase above into concrete actions

end

Given (/^I am logged in as an admin$/) do
  step 'an admin with email "email@gmail.com" and password "password" exists'
  visit '/admins/sign_in'
  fill_in 'Email', :with => 'email@gmail.com'
  fill_in 'Password', :with => 'password'
  click_button 'Log in'
  visit admins_path
end

Then (/^I type "(.*)" in textarea box$/) do |text|
    fill_in 'micropost[content]', with: 'Hi there!'
end
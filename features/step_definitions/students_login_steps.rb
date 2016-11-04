Given /^I am logged in as a student$/ do
  step 'a student with email "email@gmail.com" and password "password" exists'
  visit '/students/sign_in'
  fill_in 'Email', :with => 'email@gmail.com'
  fill_in 'Password', :with => 'password'
  click_button 'Log in'
  if page.respond_to? :should
    page.should have_content('China US Cultural Exchange Center')
    step 'I should be on the home page'
  else
    assert page.has_content?('China US Cultural Exchange Center')
    step 'I should be on the home page'
  end
end
Given(/^no user is signed in$/) do
  page.driver.submit :delete, destroy_student_session_path, {}
  page.driver.submit :delete, destroy_mentor_session_path, {}
  page.driver.submit :delete, destroy_admin_session_path, {}
end

Then(/^I should see the navigation bar for logged in users$/) do
  steps %{
    And I should see "Dashboard"
    And I should see "Logout"
  }
end

Then(/^I should not see the navigation bar for logged in users$/) do
  steps %{
    And I should see "Mentors"
    And I should see "Students"
    And I should not see "Dashboard"
    And I should not see "Logout"
  }
end
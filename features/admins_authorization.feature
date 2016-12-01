Feature: Only an admin user should be able to access admin dashboard (and other resources)

  As a non-admin user,
  I should not be able to access the admin dashboard
  
  Scenario: student cannot access admin resources
    Given I am logged in as a student
    When I go to the admin dashboard page
    Then I should see "You need to sign in or sign up before continuing."

  Scenario: mentor cannot access admin resources
    Given I am logged in as a mentor
    When I go to the admin dashboard page
    Then I should see "You need to sign in or sign up before continuing."

  Scenario: admin cannot access admin resources
    Given I am logged in as an admin
    When I go to the admin dashboard page
    Then I should see "Upload"
    And I should see admin dashboard
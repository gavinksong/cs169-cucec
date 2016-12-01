Feature: Only an admin user should be able to access admin dashboard (and other resources)

  As a non-admin user,
  I should not be able to access the admin dashboard
  
  Scenario: student cannot access admin resources
    Given I am loggedin as a student
    When I visit the admins dashboard
    Then I should see "Unathorized Access"
    
  Scenario: mentor cannot access admin resources
    Given I am loggedin as a mentor
    When I visit the admins dashboard
    Then I should see "Unathorized Access"
    
  Scenario: admin cannot access admin resources
    Given I am loggedin as an admin
    When I visit the admins dashboard
    Then I should see "Upload"
    And I should see "Table"
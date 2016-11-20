Feature: A mentor, student and admin should each have customized navigation bars

  Background:
    Given no user is signed in
  
  Scenario: visitor navigation the app
    Given I am on the landing page
    Then I should not see the navigation bar for logged in users
    
    # I should see "Mentors"
    # I should see "Students"
    # I should not see "Dashboard"
    # I should not see "Logout"
    
  Scenario: student navigating the app
    Given I am on the landing page
    When I log in as a student
    # Then I should be on the student dashboard
    And I should see the navigation bar for logged in users
    When I go to the landing page
    Then I should see the navigation bar for logged in users
    When I follow "Logout"
    Then I should be on the landing page
    And I should not see the navigation bar for logged in users
    
    


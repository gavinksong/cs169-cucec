Feature: A mentor, student and admin should each have customized navigation bars

  Background:
    Given no user is signed in
  
  Scenario: visitor navigating the app
    Given I am on the landing page
    Then I should not see the navigation bar for logged in users
    
  Scenario: student navigating the app
    Given I am on the landing page
    And I am logged in as a student
    Then I should see the navigation bar for logged in users
    When I go to the landing page
    Then I should see the navigation bar for logged in users
    When I am logged out as a student
    And I should not see the navigation bar for logged in users
  
  Scenario: mentor navigating the app
    Given I am on the landing page
    And I am logged in as a mentor
    Then I should see the navigation bar for logged in users
    When I go to the landing page
    Then I should see the navigation bar for logged in users
    When I am logged out as a mentor
    And I should not see the navigation bar for logged in users
  
  Scenario: admin navigating the app
    Given I am on the landing page
    And I am logged in as an admin
    Then I should see the navigation bar for logged in users
    When I go to the landing page
    Then I should see the navigation bar for logged in users
    When I am logged out as an admin
    And I should not see the navigation bar for logged in users    
    


Feature: Mentor Navigation Page

    As a Mentor,
    So that I can do some shit,
    I want to be able to see the Mentor Navigation Page.
    
Background:
    Given a mentor with email "email@email.com" and password "mypassword" exists

Scenario: Redirect to Navigation Page upon login
  
    Given I am on the mentor login page
    And I fill in "mentor_email" with "email@email.com"
    And I fill in "mentor_password" with "mypassword"
    And I press "Log in"
    Then I should be on the mentor navigation page

Scenario: Access Chat
    
    Given I am on the mentor navigation page
    Then I should see "Chat"
    When I press "chat-button"
    Then I should be on the mentor Chat page.

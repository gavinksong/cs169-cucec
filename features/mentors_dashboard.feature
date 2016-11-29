Feature: Mentor Dashboard

  As a logged in mentor
  In order to access all the mentor-features of the app
  I want to see buttons that lead to these features
  These buttons include:
  1. Call
  2. Chat

  Background: On mentor dashboard page
    Given I am logged in as a mentor

  Scenario: Accessing Call
    Then I should see "Call"
    When I follow "Call"
    Then I should be on the mentor call page

  Scenario: Accessing Chat
    Then I should see "Chat"
    When I follow "Chat"

Feature: Mentor login

  As a mentor
  So that I can continue using the app
  I want to be able to log in to my existing account

  Background:
    Given a mentor with email "email@gmail.com" and password "mypassword" exists

  Scenario: I am presented with the mentor login page
    Given I am on the mentor login page
    And I fill in "mentor_email" with "email@gmail.com"
    And I fill in "mentor_password" with "mypassword"
    And I press "Log in"
    Then I should be on the mentor dashboard page

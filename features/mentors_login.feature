Feature: Mentor login

  Mentors should be able to sign into their account
  This is essential because it allows mentors to
  access

  Background:
    Given a mentor with email "email@gmail.com" and password "mypassword" exists

  Scenario: I am presented with the mentor login page
    Given I am on the mentor login page
    And I fill in "mentor_email" with "email@gmail.com"
    And I fill in "mentor_password" with "mypassword"
    And I press "Log in"
    Then I should be on the home page

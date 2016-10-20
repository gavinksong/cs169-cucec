Feature: Mentor sign in

  Mentors should be able to sign into their account
  This is essential because it allows mentors to
  access

  Background:
    Given A user with email "email@gmail.com" and password "mypassword" exists

  Scenario: I am presented with the mentor signup page
    Given I am on the mentor sign in page
    And I fill in "mentor_email" with "email"
    And I fill in "mentor_password" with "password"
    And I press "Log in"
    Then I should be on the home page

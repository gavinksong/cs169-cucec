Feature: Mentor sign up

  Mentors should be able to create an account
  So that they can sign in as mentors
  This is essential because it gives mentors a
  separate access than other users of Cucec

  Scenario: I am presented with the mentor signup page
    Given I am on the mentor signup page
    And I fill in "mentor_email" with "email@gmail.com"
    And I fill in "mentor_password" with "mypassword"
    And I fill in "mentor_password_confirmation" with "mypassword"
    And I press "Sign up"
    Then I should be on the mentor dashboard page

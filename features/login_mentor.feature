Feature: login as a mentor

  As a volunteer mentor
  In order to offer my service
  I want to be able to access the login form on the landing page

Background:
  Given I am already signed up as a mentor

Scenario: access login form as a mentor
  Given I am on the home page
  Then I should see "sign in as a mentor"
  When I press "Sign In as a Mentor"
  Then I should be on the sign-up page
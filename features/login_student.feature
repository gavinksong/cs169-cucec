Feature: login as a student

  As a chinese student
  In order to learn english and US culture
  I want to be able to access the login form on the landing page

Background:
  Given I am already signed up as a student

Scenario: access login form as a mentor
  Given I am on the home page
  Then I should see "Sign in as a Student"
  When I follow "Sign in as a Student"
  Then I should be on the student signup page
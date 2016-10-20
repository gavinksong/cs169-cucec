Feature: Student Login
  
  As a scholar
  So that I can continue using the app
  I want to be able to log in to an existing account
  
Background:
  Given A student with email "email@gmail.com" and password "mypassword" exists
  
Scenario: I am presented with the login screen
  Given I am on the student login page
  And I fill in "student_email" with "email@gmail.com"
  And I fill in "student_password" with "mypassword"
  And I press "Log in"
  Then I should be on the home page
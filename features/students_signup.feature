Feature: Student Sign Up
  
  As a scholar
  So that I may begin using the app 
  I want to be able to sign up and create a new account
  
Scenario: I am presented with the student sign up screen
  Given I am on the student signup page
  And I fill in "student_email" with "email@gmail.com"
  And I fill in "student_password" with "mypassword"
  And I fill in "student_password_confirmation" with "mypassword"
  And I press "Sign up"
  Then I should be on the home page
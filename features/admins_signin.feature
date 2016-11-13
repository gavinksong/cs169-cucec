Feature: Admin Login
  
  As an admin
  So that I can continue managing the app
  I want to be able to log in to my existing account
  
Background:
  Given an admin with email "email@gmail.com" and password "mypassword" exists
  
Scenario: I am presented with the login screen
   Given I am on the admin login page
   And I fill in "admin_email" with "email@gmail.com"
   And I fill in "admin_password" with "mypassword"
   And I press "Log in"
   Then I should be on the admin dashboard page
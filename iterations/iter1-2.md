Feature: landing page

  As a user
  In order start using the app
  I want to be able to access the landing page
  
Scenario: access login form as a mentor
  Given I am on the home page
  Then I should see "Mentors"
  When I follow "Mentors"
  Then I should be on the mentor login page
  
  
Scenario: access login form as a student
  Given I am on the home page
  Then I should see "Students"
  When I follow "Students"
  Then I should be on the student login page  

Scenario: access signup form as a mentor
  Given I am on the home page
  Then I should see "Mentors Get Started"
  When I follow "Mentors Get Started"
  Then I should be on the mentor signup page
  
  
Scenario: access signup form as a student
  Given I am on the home page
  Then I should see "Students Get Started"
  When I follow "Students Get Started"
  Then I should be on the student signup page 
###########################################################################  
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
########################################################################### 
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
########################################################################### 
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
########################################################################### 
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
    Then I should be on the homepage

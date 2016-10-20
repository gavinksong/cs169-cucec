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

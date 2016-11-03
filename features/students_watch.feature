Feature: Student Watch Page
  
  As a student
  So that I can improve my English skills
  I want to be able to watch an English video
  
Background:
  Given I am logged in as a "student"
  And I am on the student video page
  
Scenario: I can watch a video
  Then I should see "Watch Video"
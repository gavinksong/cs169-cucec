Feature: Student Listen Page
  
  As a student
  So that I can improve my English listening skills
  I want to be able to listen to English audio
  
Background:
  Given I am logged in as a student
  And I am on the student Listen page
  
Scenario: I can listen to audio
  Then I should see "Listen to Audio"
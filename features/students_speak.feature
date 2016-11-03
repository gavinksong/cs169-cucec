Feature: Student Speak Page
  
  As a student
  So that I can improve my English speaking skills
  I want to be able read English words
  and hear how they are pronounced.
  
Background:
  Given I am logged in as a "student"
  And I am on the student Speak page
  
Scenario: I can listen to audio
  Given there is an "audio" file for "speaking"
  When I press "audio"
  Then I should hear audio playing
  
Scenario: I can see the pronunciation
  Given there is a "text" file for "speaking"
  Then I should see a text box
  
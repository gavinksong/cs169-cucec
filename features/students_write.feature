Feature: Student Write Page
  
  As a student
  So that I can improve my English writing skills
  I want to be able to write in English and upload my writing to the app
  
Background:
  Given I am logged in as a student
  And I am on "the student Write page"
  
Scenario: I can write text in the text box.
  When I fill in "text_box" with "random words"
  Then I should see "random words" in "text_box"
  
Scenario: I can upload sample sentence
  When I fill in "text_box" with "This is a sentence"
  And I press "upload"
  Then I should see "upload successful"
  
Feature: Admin can upload a .mp3 file

  As a logged-in admin,
  In order to create content
  I want to be able to upload a .mp3 file
  Where the name of file is YYYY-MM-DD_listen.mp3 
  Such that students will be able to see the contents of the file in the Listening View on the given date 

  Background: On admin dashboard page and certain files exist
    Given I haven't uploaded any files to the app
    And the following files exist on my local computer with today's date:
      | name                        | content      |
      | YYYY-MM-DD_listen.mp3 | Hello World  |
    And the following files exist on my local computer with tomorrow's date:
      | name                        | content      |
      | YYYY-MM-DD_listen.mp3 | Thank you    |
    Given I am logged in as an admin

  Scenario: Uploading read content that a student can see with today's date
    Given I successfully upload audio files for today
    And   I am logged in as a student
    And   I follow "Listen"
    Then  I should see an audio file
 
  Scenario: Haven't uploaded anything
    Given I am logged in as a student
    And   I follow "Listen"
    Then  I should see "Sorry, no content has been uploaded for today."
  
  Scenario: Uploading read content with tomorrow's date
    Given I successfully upload audio files for tomorrow
    Given I am logged in as a student
    And   I follow "Listen"
    Then  I should see "Sorry, no content has been uploaded for today"
    Given it is tomorrow
    Given I am on the student listen page
    Then  I should see an audio file
 
  Scenario: Admin should be able to delete uploaded content
    Then I should be on the admin dashboard page
    When I follow "Upload"
    Then I should be on the Upload page
    When I upload audio "mp3" for "listen" for tomorrow
    Then I should see "Upload successful"
    Then I should be on the Upload page
    When I follow "Delete"
    Then I should not see "listen"
   
  Scenario: clear everything.
    Then Delete all files
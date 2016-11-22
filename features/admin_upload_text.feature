Feature: Admin can upload a .txt file

  As a logged-in admin,
  In order to create content
  I want to be able to upload a .txt file
  Where the name of file is YYYY-MM-DD_read_english.txt and YYYY-MM-DD_chinese.txt
  Such that students will be able to see the contents of the file in the Reading View on the given date

  Background: On admin dashboard page and certain files exist
    Given a "txt" file exists for "read_english" for today
    And   it has content "Hello World"
    Given a "txt" file exists for "read_chinese" for today
    And   it has content "你好，世界"
    Given a "txt" file exists for "read_english" for tomorrow
    And   it has content "Thank you"
    Given a "txt" file exists for "read_chinese" for tomorrow
    And   it has content "谢谢"
    Given no content has been uploaded
    Given I am logged in as an admin

  Scenario: Uploading read content that a student can see with today's date
    Given I successfully upload files for today
    And I am logged in as a student
    And   I follow "Read"
    Then  I should see "Hello World"
    Then  I should see "你好，世界"

  Scenario: Haven't uploaded anything
    Given I am logged in as a student
    And   I follow "Read"
    Then  I should see "Sorry, no content has been uploaded for today."
    
  Scenario: Uploading read content with tomorrow's date
    Given I successfully upload files for tomorrow
    Given I am logged in as a student
    And   I follow "Read"
    Then  I should see "Sorry, no content has been uploaded for today"
    Given it is tomorrow
    Given I am on the student read page
    Then  I should see "Thank you"
    Then  I should see "谢谢"
    
  Scenario: Admin should be able to delete uploaded content
    Then I should be on the admin dashboard page
    When I follow "Upload"
    Then I should be on the Upload page
    When I upload "txt" for "read_english" for tomorrow
    Then I should see "Upload successful"
    Then I should be on the Upload page
    When I follow "Delete"
    Then I should not see "read_english"
   
  Scenario: clear everything.
    Then Delete all files

Feature: Admin can upload a .txt file

  As a logged-in admin,
  In order to create content
  I want to be able to upload a .txt file
  Where the name of file is YYYY-MM-DD_read_english.txt and YYYY-MM-DD_chinese.txt
  Such that students will be able to see the contents of the file in the Reading View on the given date 

  Background: On admin dashboard page and certain files exist
    Given I haven't uploaded any files to the app
    And the following files exist on my local computer with today's date:
      | name                        | content      |
      | YYYY-MM-DD_read_english.txt | Hello World  |
      | YYYY-MM-DD_read_chinese.txt | 你好，世界   |
    And the following files exist on my local computer with tomorrow's date:
      | name                        | content      |
      | YYYY-MM-DD_read_english.txt | Thank you    |
      | YYYY-MM-DD_read_chinese.txt | 谢谢         |

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

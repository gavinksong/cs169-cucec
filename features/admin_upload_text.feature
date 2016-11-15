Feature: Admin can upload a .txt file

  As a logged-in admin,
  In order to create content
  I want to be able to upload a .txt file
  Where the name of file is YYYY-MM-DD_read_english.txt and YYYY-MM-DD_chinese.txt
  Such that students will be able to see the contents of the file in the Reading View on the given date

  Background: On admin dashboard page and certain files exist
    Given I am logged in as an admin
    Given a "txt" file exists for "read_english" for today
    And   it has content "Hello World"
    Given a "txt" file exists for "read_chinese" for today
    And   it has content "你好，世界"
    Given a "txt" file exists for "read_english" for tommorrow
    And   it has content "Thank you"
    Given a "txt" file exists for "read_chinese" for tommorrow
    And   it has content "谢谢"
    Given no content has been uploaded

  Scenario: Uploading read content that a student can see with today's date
    Then  I should see "Upload"
    When  I follow "Upload"
    Then  I should be on the Upload page
    When  I upload "txt" for "read_english" for today
    Then  I should see "Upload successful"
    Then  I should be on the Upload page
    When  I upload "txt" for "read_chinese" for today
    Then  I should see "Upload successful"
    Given I am logged in as a student
    And   I follow "Read"
    Then  I should see "Hello World"
    Then  I should see "你好，世界"

  Scenario: Haven't uploaded anything
    Given I am logged in as a student
    And   I follow "Read"
    Then  I should see "Sorry, no content has been uploaded for today."
    
  Scenario: Uploading read content with tommorrow's date
    Then I should see "Upload"
    When I follow "Upload"
    Then I should be on the Upload page
    When I upload "txt" for "read_english" for tommorrow
    Then I should see "Upload successful"
    Then I should be on the Upload page
    When I upload "txt" for "read_chinese" for tommorrow
    Then I should see "Upload successful"
    Given I am logged in as a student
    And   I follow "Read"
    Then  I should see "Sorry, no content has been uploaded for today"
    Given it is tommorrow
    Given I am on the student read page
    Then  I should see "Thank you"
    Then  I should see "谢谢"
   
  Scenario: clear everything.
    Then Delete all files

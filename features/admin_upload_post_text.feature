Feature: Admin can upload a .txt file

  As a logged-in admin,
  In order to create content
  I want to be able to upload a .txt file
  With the date that it is to be displayed
  That students will be able to see in the Reading View on the given date
  For now, we will use Mentor in place of admin until the admin  page is complete.
  Afterwards, we can replace mentor with admin.

  Background: On mentor dashboard page
    Given I am logged in as a mentor

  Scenario: Uploading a text file that a student can see with today's date
    #Then I should see "Upload text"
    #When I follow "Upload text"
    #Then I should be on the text upload page
    #When I upload a text file with valid content and today's date
    #Then I should see "upload successful"
    #When I logout
    #And  I am logged in as a student
    #And  I visit the student read page
    #Then I should see valid content

  Scenario: Uploading an empty text file
    #Then I should see "Upload text"
    #When I follow "Upload text"
    #Then I should be on the text upload page
    #When I upload a text file with no content and today's date
    #Then I should see "upload successful"
    #When I logout
    #And  I am logged in as a student
    #And  I visit the student read page
    #Then I should see empty content

  Scenario: Uploading an empty text file, then uploading a valid text file with today's date
    #Then I should see "Upload text"
    #When I follow "Upload text"
    #Then I should be on the text upload page
    #When I upload a text file with no content and today's date
    #Then I should see "upload successful"
    #When I upload a text file with valid content and today's date
    #Then I should see "upload successful"
    #When I logout
    #And  I am logged in as a student
    #And  I visit the student read page
    #Then I should see valid content
    
  Scenario: Uploading an empty text file with today's date, then uploading a valid text file with tommorrow's date
    #Then I should see "Upload text"
    #When I follow "Upload text"
    #Then I should be on the text upload page
    #When I upload a text file with no content and today's date
    #Then I should see "upload successful"
    #When I upload a text file with valid content and tommorrow's date
    #Then I should see "upload successful"
    #When I logout
    #And  I am logged in as a student
    #And  I visit the student read page
    #Then I should see empty content
    
  Scenario: Uploading valid text file with today's date, then uploading an empty text file with tommorrow's date
    #Then I should see "Upload text"
    #When I follow "Upload text"
    #Then I should be on the text upload page
    #When I upload a text file with valid content and today's date
    #Then I should see "upload successful"
    #When I upload a text file with empty content and tommorrow's date
    #Then I should see "upload successful"
    #When I logout
    #And  I am logged in as a student
    #And  I visit the student read page
    #Then I should see valid content
    

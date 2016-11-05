Feature: Admin Navigation Page

  As an Admin
  So that I may manage the content of the application
  I want to be able upload the desired files into application


  Scenario: Upload the files to admin main page
    Given I am on the admin page
    Then I should see "Upload"
    When I upload a file
    Then I should see "upload successful"

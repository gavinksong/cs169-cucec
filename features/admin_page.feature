Feature: Admin Navigation Page

  As an Admin
  So that I may manage the content of the application
  I want to be able upload the desired content

Background:
  Given I am logged in as an admin
  Then I should be on the admin page
  
Scenario: Upload the text to admin main page
  When I type "Hi there!" in textarea box
  Then I should see "Upload" button
  And press "Upload"
  Then I should see "Hi there!"

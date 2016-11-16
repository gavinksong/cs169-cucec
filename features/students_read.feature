Feature: Student Reading

  As a logged-in student user
  If I am on the Reading page for students
  I should see an article in English
  I should also see a translate article in Chinese
  
  Background:
    Given I am logged in as a student
    And I am on the student read page

  Scenario: Reading page articles
    Then I should see "Article of the Day"
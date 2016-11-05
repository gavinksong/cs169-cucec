Feature: Student Reading

  As a logged-in student user
  If I am on the Reading page for students
  I should see an article in English
  I should also see a translate article in Chinese

  Scenario: Reading page articles
    Given I am on the student Read page
    Then I should see "Article of the Day"
    Then I should see "中文"
    Then I should see "English"

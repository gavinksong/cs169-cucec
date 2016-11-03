Feature: Student navigation

  As a logged in student
  In order to access all the student-features of the app
  I want to see navigation tabs to lead to these features
  These tabs include:
  1. Listen
  2. Speak
  3. Read
  4. Write
  5. Watch
  6. Chat

  Background: On student navigation page
    Given I am on the student navigation page

  Scenario: Accessing listening
    Then I should see "Listening"
    When I press "learn-listening"
    Then I should be on the student Listening page

  Scenario: Accessing speaking
    Then I should see "Speaking"
    When I press "learn-speaking"
    Then I should be on the student Speaking page

  Scenario: Accessing reading
    Then I should see "Reading"
    When I press "learn-reading"
    Then I should be on the student Reading page

  Scenario: Accessing writing
    Then I should see "Writing"
    When I press "learn-writing"
    Then I should be on the student Writing page

  Scenario: Accessing watch
    Then I should see "Watch"
    When I press "learn-watch"
    Then I should be on the student Watch page

  Scenario: Accessing chat
    Then I should see "Chat"
    When I press "learn-chat"
    Then I should be on the student Chat page

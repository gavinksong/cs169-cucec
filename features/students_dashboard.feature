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
    When I follow "Listen"
    Then I should be on the student Listen page

  Scenario: Accessing speaking
    Then I should see "Speaking"
    When I follow "Speak"
    Then I should be on the student Speak page

  Scenario: Accessing reading
    Then I should see "Reading"
    When I follow "Read"
    Then I should be on the student Read page

  Scenario: Accessing writing
    Then I should see "Writing"
    When I follow "Write"
    Then I should be on the student Write page

  Scenario: Accessing watch
    Then I should see "Watch"
    When I follow "Watch"
    Then I should be on the student Watch page

  Scenario: Accessing chat
    Then I should see "Chat"
    When I follow "Chat"
    Then I should be on the Chat page
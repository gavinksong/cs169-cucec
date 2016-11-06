Feature: Student Dashboard

  As a logged in student
  In order to access all the student-features of the app
  I want to see buttons that lead to these features
  These buttons include:
  1. Listen
  2. Speak
  3. Read
  4. Write
  5. Watch
  6. Chat

  Background: On student dashboard page
    Given I am logged in as a student

  Scenario: Accessing listening
    Then I should see "Listening"
    When I follow "Listen"
    Then I should be on the student listen page

  Scenario: Accessing speaking
    Then I should see "Speaking"
    When I follow "Speak"
    Then I should be on the student speak page

  Scenario: Accessing reading
    Then I should see "Reading"
    When I follow "Read"
    Then I should be on the student read page

  Scenario: Accessing writing
    Then I should see "Writing"
    When I follow "Write"
    Then I should be on the student write page

  Scenario: Accessing watch
    Then I should see "Watch"
    When I follow "Watch"
    Then I should be on the student watch page

  Scenario: Accessing chat
    Then I should see "Chat"
    When I follow "Chat"
    Then I should be on the student chat page
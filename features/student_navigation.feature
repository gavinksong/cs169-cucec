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

Scenario: Accessing listening
  Given I am on the student navigation page
  Then I should see "Listening"
  When I press "learn-listening"
  Then I should be on the student Listening page

Scenario: Accessing speaking
  Given I am on the student navigation page
  Then I should see "Speaking"
  When I press "learn-speaking"
  Then I should be on the student Speaking page

Scenario: Accessing reading
  Given I am on the student navigation page
  Then I should see "Reading"
  When I press "learn-reading"
  Then I should be on the student Reading page

Scenario: Accessing writing
  Given I am on the student navigation page
  Then I should see "Writing"
  When I press "learn-writing"
  Then I should be on the student Writing page

Scenario: Accessing watch
  Given I am on the student navigation page
  Then I should see "Watch"
  When I press "learn-watch"
  Then I should be on the student Watch page

Scenario: Accessing chat
  Given I am on the student navigation page
  Then I should see "Chat"
  When I press "learn-chat"
  Then I should be on the student Chat page









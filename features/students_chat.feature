Feature: Student Chat

  Students should be able to chat with available mentor
  This is important because it allows students to enhance their
  English writing skills

  Scenario: Starting a new conversation
    Given I am logged in as a student
    Given I am on the student chat page
    Then I should see "New Conversation"


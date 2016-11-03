Feature: Student Chat

  Students should be able to chat with available mentor
  This is important because it allows students to enhance their
  English writing skills

  Scenario: Starting a new conversation
    Given I am on the Chat page
    And I follow "New Conversation"
    Then I should see "New Conversation"

  Scenario: Message to mentor should send

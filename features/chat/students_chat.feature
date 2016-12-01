Feature: Student Chat

  Students should be able to chat with available mentor
  This is important because it allows students to enhance their
  English writing skills

  Background:
    Given there exists a mentor who is also available to chat

  # Scenario: Only students can access conversations page
  #   Given I am on the student chat page
  #   Then I should be on the student login page
  
  # We are reverting for now.

  Scenario: Starting a new conversation
    Given I am logged in as a student
    Given I am on the student chat page
    Then I should see "New Conversation"
    Given I follow "New Conversation"


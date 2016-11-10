Feature: Student-Mentor Chat

  Student and mentor should be able to chat in real-time

  Background: Conversation exists between student and mentor
    # TODO: path not yet implemented in features/step_definitions/chat_steps.rb
    Given there exists a conversation between student "emilio@berkeley.edu" and mentor "lin@yahoo.com"

  Scenario: Chat should work between the two of them
    Given student "emilio@berkeley.edu" with password "foobar" is logged in
    # TODO: student follows path to his conversation with mentor 'Lin'

    # Student sends the first message
#    And I fill in "message-text" with "Hey there mentor"
#    And I follow "Send"
#    Then I should see "Hey there mentor"

    # Student sends another message
#    And I fill in "message-text" with "I want some help with my English"
#    And I follow "Send"
#    Then I should see "I want some help with my English"

    # Instructor receives both first and second message
    # TODO: Fix that mentor is not on his dashboard
    Given mentor "lin@yahoo.com" with password "foobar" is logged in
    # TODO: mentor follows path to his conversation with student 'Emilio'
#    Then I should see "Hey there mentor"
#    Then I should see "I want some help with my English"

    # Instructor sends his first message
#    And I fill in "message-text" with "Alright bud I'll help you"
#    And I follow "Send"
#    Then I should see "Alright bud I'll help you"

    # Instructor sends his second message
#    And I fill in "message-text" with "What do you need?"
#    And I follow "Send"
#    Then I should see "What do you need?"

    # Instructor should still see student messages
#    Then I should see "Hey there mentor"
#    Then I should see "I want some help with my English"

    # Student should see instructor messages
#    Given student "emilio@berkeley.edu" with password "foobar" is logged in
    # TODO: student follows path to his conversation with mentor 'Lin'

#    Then I should see "Alright bud I'll help you"
#    Then I should see "What do you need?"
    # Real time chat test finished!

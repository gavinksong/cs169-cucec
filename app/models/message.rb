class Message < ApplicationRecord
  belongs_to :conversation

  validates_presence_of :body, :conversation_id, :user_id

  # TODO: more stuff here
end

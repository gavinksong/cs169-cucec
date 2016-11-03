class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :mentor
  belongs_to :student

  validates_presence_of :body, :conversation_id, :user_id

  # TODO: more stuff here
end

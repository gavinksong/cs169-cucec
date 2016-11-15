class Message < ApplicationRecord
  belongs_to :conversation
  # allows messages to be owned by student or mentor
  belongs_to :student_or_mentor, polymorphic: true


  validates_presence_of :body, :conversation_id, :user_id

  # TODO: more stuff here
end

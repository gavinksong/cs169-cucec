class Message < ApplicationRecord
  belongs_to :conversation
  # allows messages to be owned by student or mentor
  belongs_to :student_or_mentor, polymorphic: true

end

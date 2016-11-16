class Conversation < ApplicationRecord
  belongs_to :student, :foreign_key => :student_id, class_name:"Student"
  belongs_to :mentor, :foreign_key => :mentor_id, class_name: "Mentor"

  has_many  :messages, dependent: :destroy
end

class Mentor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable




  # realtime chat feature
  has_many :conversations, dependent: :destroy
  has_many :messages, as: :student_mentor_messages

end

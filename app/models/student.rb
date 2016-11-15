class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # writing feature
  has_many :writings, dependent: :destroy

  # realtime chat feature
  has_many :conversations, dependent: :destroy
  has_many :messages, as: :student_or_mentor

end

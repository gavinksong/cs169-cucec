class Mentor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/


  # realtime chat feature
  has_many :conversations, dependent: :destroy
  has_many :messages, as: :author

  # for use with distinguishing user type
  def type
    :mentor
  end

  #availability for chat
  def update_availability(new_value)
    self.update_attribute(:is_available, new_value)
  end
  
  # number of mentors available for chat
  def self.mentors_available_chat
    Mentor.where(:is_available => 1).size
  end
end

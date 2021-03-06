class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  # writing feature
  has_many :writings, dependent: :destroy

  # realtime chat feature
  has_many :conversations, dependent: :destroy
  has_many :messages, as: :author

  def type
    :student
  end
end

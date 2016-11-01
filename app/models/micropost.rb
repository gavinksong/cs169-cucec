class Micropost < ApplicationRecord
  belongs_to :admin
  default_scope -> { order(created_at: :desc) }
  validates :admin_id, presence: true
  validates :content, presence: true, length: { maximum: 300 }

end

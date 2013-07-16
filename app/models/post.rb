class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 1000 }
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 100 }
end

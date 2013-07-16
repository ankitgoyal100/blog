class Comment < ActiveRecord::Base
  belongs_to :post
  
  validates :commenter, presence: true, length: { maximum: 100 }
  validates :body, presence: true
end

class Post < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id 
  validates :content, length: { maximum: 140 } # tweets are capped at 140 characters

  default_scope -> {order(created_at: :desc) } # newest tweets /post first
end

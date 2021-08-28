class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :dairy

  validates :comment_content, presence: true
end

class Dairy < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :comment_users, through: :comments, source: :user

  validates :title, presence: true
  validates :content, presence: true

end

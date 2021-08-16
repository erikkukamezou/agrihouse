class Dairy < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :comment_users, through: :comments, source: :user
end

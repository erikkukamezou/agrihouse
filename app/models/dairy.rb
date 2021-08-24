class Dairy < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :comment_users, through: :comments, source: :user
  
  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :content, presence: true

end

class Task < ApplicationRecord
  belongs_to :event
  mount_uploader :image, ImageUploader

  validates :work, length: { in: 1..75 }

end

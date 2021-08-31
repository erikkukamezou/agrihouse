class Manufacture < ApplicationRecord
  belongs_to :user
  validates :humidity, presence: true, length: { in: 1..5 }
  validates :harvest, presence: true, length: { in: 1..5 }
  validates :indoor_temperature, presence: true, length: { in: 1..5 }
  validates :soil_temperature, presence: true, length: { in: 1..5 }
end

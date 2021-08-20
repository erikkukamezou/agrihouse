class Manufacture < ApplicationRecord
  belongs_to :user
  validates :humidity, presence: true
  validates :harvest, presence: true
  validates :indoor_temperature, presence: true
  validates :soil_temperature, presence: true
end

class Cost < ApplicationRecord
  belongs_to :user
  validates :fertilizer, presence: true
  validates :sale, presence: true
  validates :soil, presence: true
  validates :seed, presence: true
end

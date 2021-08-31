class Cost < ApplicationRecord
  belongs_to :user
  validates :fertilizer, presence: true, length: { in: 1..5 }
  validates :sale, presence: true, length: { in: 1..5 }
  validates :soil, presence: true,length: { in: 1..5 }
  validates :seed, presence: true,length: { in: 1..5 }


end

class Event < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks
  validates :title, presence: true
  validate :start_end_check

  def start_end_check
    errors.add(:end_date, "は開始日より前の日付は登録できません。") unless
    self.start_date <= self.end_date
  end
end

class Program < ApplicationRecord
  has_many :ad_breaks

  validates :name, presence: true, uniqueness: true
  validates :scheduled_start_date, presence: true
  validates :scheduled_end_date, presence: true
  validates :duration, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :scheduled_days, presence: true
end

class AdBooking < ApplicationRecord
  belongs_to :ad
  belongs_to :user
  belongs_to :ad_break
  delegate :duration, to: :ad

  validates :name, presence: true
  validates :order, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :ad, presence: true
  validates :user, presence: true
  validates :ad_break, presence: true
  validates :scheduled_start_date, presence: true
  validates :scheduled_end_date, presence: true
  validates :scheduled_days, presence: true
end

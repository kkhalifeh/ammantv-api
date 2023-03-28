class AdBreak < ApplicationRecord
  belongs_to :program
  has_many :ad_bookings

  validates :name, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :program, presence: true
  validates :start_time, presence: true
end

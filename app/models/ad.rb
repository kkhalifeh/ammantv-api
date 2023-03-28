class Ad < ApplicationRecord
  belongs_to :advertiser
  has_many :ad_bookings

  validates :name, presence: true, uniqueness: true
  validates :adtype, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :advertiser, presence: true

end

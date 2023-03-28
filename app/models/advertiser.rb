class Advertiser < ApplicationRecord
  has_many :ads
  has_many :contacts  

  validates :name, presence: true, uniqueness: true
end

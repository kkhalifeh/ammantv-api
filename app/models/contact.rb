class Contact < ApplicationRecord
  belongs_to :advertiser

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :mobile_number, presence: true
  validates :title, presence: true
  validates :advertiser, presence: true
end

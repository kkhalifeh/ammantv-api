class RemoveDurationFromAdBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :ad_bookings, :duration, :integer
  end
end

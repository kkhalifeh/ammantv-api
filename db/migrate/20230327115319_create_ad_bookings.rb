class CreateAdBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :ad_bookings do |t|
      t.string :name, limit: 255
      t.integer :order
      t.integer :duration
      t.references :ad, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :ad_break, null: false, foreign_key: true
      t.date :scheduled_start_date
      t.date :scheduled_end_date
      t.string :scheduled_days, limit: 255

      t.timestamps
    end
  end
end

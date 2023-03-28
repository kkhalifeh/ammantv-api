class CreatePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.string :name, limit: 255
      t.date :scheduled_start_date
      t.date :scheduled_end_date
      t.time :duration
      t.time :start_time
      t.time :end_time
      t.string :scheduled_days, limit: 255

      t.timestamps
    end
    add_index :programs, :name, unique: true
  end
end

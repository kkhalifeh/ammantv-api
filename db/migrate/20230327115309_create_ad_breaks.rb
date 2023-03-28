class CreateAdBreaks < ActiveRecord::Migration[7.0]
  def change
    create_table :ad_breaks do |t|
      t.string :name, limit: 255
      t.integer :duration
      t.references :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end

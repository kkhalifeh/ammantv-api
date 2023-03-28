class CreateAds < ActiveRecord::Migration[7.0]
  def change
    create_table :ads do |t|
      t.string :name, limit: 255
      t.string :type, limit: 255
      t.string :attachment, limit: 255
      t.integer :duration
      t.references :advertiser, null: false, foreign_key: true

      t.timestamps
    end
    add_index :ads, :name, unique: true
  end
end

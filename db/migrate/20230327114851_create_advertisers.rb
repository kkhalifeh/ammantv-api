class CreateAdvertisers < ActiveRecord::Migration[7.0]
  def change
    create_table :advertisers do |t|
      t.string :name, limit: 255
      t.string :city, limit: 255
      t.string :country, limit: 255

      t.timestamps
    end
    add_index :advertisers, :name, unique: true
  end
end

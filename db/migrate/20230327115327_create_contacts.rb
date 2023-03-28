class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name, limit: 255
      t.string :last_name, limit: 255
      t.string :mobile_number, limit: 255
      t.string :title, limit: 255
      t.references :advertiser, null: false, foreign_key: true

      t.timestamps
    end
  end
end

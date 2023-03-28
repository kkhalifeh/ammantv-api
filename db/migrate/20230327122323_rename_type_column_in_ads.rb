class RenameTypeColumnInAds < ActiveRecord::Migration[7.0]
  def change
    rename_column :ads, :type, :adtype
  end
end

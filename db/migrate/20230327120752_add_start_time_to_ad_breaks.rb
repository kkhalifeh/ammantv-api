class AddStartTimeToAdBreaks < ActiveRecord::Migration[7.0]
  def change
    add_column :ad_breaks, :start_time, :time
  end
end

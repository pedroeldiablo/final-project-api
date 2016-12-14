class DropStopsWalksTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :stops_walks
  end
end

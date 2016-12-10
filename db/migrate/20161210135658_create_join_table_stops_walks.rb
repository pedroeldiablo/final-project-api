class CreateJoinTableStopsWalks < ActiveRecord::Migration[5.0]
  def change
    create_join_table :stops, :walks do |t|
      # t.index [:stop_id, :walk_id]
      # t.index [:walk_id, :stop_id]
    end
  end
end

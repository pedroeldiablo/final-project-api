class RemoveStopFromWalk < ActiveRecord::Migration[5.0]
  def change
    remove_column :walks, :stop_id
  end
end

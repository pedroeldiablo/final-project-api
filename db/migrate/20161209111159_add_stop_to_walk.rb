class AddStopToWalk < ActiveRecord::Migration[5.0]
  def change
    add_reference :walks, :stop, foreign_key: true
  end
end

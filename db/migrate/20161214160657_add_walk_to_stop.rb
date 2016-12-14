class AddWalkToStop < ActiveRecord::Migration[5.0]
  def change
    add_reference :stops, :walk, foreign_key: true
  end
end

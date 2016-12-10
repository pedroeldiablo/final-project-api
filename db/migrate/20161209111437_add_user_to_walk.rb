class AddUserToWalk < ActiveRecord::Migration[5.0]
  def change
    add_reference :walks, :user, foreign_key: true
  end
end

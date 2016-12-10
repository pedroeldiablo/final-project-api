class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :image
      t.float :lat
      t.float :lng
      t.string :google_place_id

      t.timestamps
    end
  end
end

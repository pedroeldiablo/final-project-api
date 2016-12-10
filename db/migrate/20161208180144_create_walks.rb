class CreateWalks < ActiveRecord::Migration[5.0]
  def change
    create_table :walks do |t|
      t.string :name
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end

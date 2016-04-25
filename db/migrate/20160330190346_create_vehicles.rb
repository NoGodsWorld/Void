class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :year
      t.integer :capacity
      t.decimal :price
      t.string :photo

      t.timestamps null: false
    end
  end
end

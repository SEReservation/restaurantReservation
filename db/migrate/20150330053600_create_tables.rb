class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :num_seats
      t.integer :restaurant_id
      t.float :x_loc
      t.float :y_loc
      t.boolean :available

      t.timestamps null: false
    end
  end
end

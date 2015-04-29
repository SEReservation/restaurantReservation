class AddTableidToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :tableid, :integer
  end
end

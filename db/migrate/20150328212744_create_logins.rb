class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :user
      t.string :pass
      t.string :type_user

      t.timestamps null: false
    end
  end
end

class CreateUserData < ActiveRecord::Migration
  def change
    create_table :user_data do |t|
      t.string :deviceid
      t.string :time
      t.string :location

      t.timestamps
    end
  end
end

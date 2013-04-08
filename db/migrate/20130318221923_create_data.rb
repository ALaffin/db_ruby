class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :deviceId
      t.string :location
      t.string :time

      t.timestamps
    end
  end
end

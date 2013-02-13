class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :id
      t.string :popularity
      t.timestamps
    end
  end
end

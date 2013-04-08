class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :stationId
      t.string :rank
      t.string :upordown

      t.timestamps
    end
  end
end

class CreateBixiStatuses < ActiveRecord::Migration
  def change
    create_table :bixi_statuses do |t|
      t.date :lastupdated
      t.text :xmldata
      t.timestamps
    end
  end
end

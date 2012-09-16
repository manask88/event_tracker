class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :id
      t.string :name
      t.time :start
      t.time :end
      t.integer :location_id
      t.text :description

      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :date
      t.integer :time
      t.string :attendee_limit
      t.string :location_name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :description
      t.string :categories

      t.timestamps null: false
    end
  end
end

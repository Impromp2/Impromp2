class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.integer :user_id
      t.string :day_of_the_week
      t.integer :start_time
      t.integer :end_time

      t.timestamps null: false
    end
  end
end

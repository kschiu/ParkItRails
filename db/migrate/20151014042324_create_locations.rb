class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :user_id
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.integer :min_to_campus
      t.integer :num_cars
      t.string :car_type

      t.timestamps
    end
  end
end

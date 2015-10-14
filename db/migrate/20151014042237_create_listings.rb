class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.integer :location_id
      t.integer :half_day
      t.integer :full_day
      t.integer :week
      t.integer :month
      t.datetime :startDateTime
      t.datetime :endDateTime
      t.boolean :active

      t.timestamps
    end
  end
end

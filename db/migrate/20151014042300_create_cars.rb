class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :purchase_id
      t.string :make
      t.string :model
      t.string :license

      t.timestamps
    end
  end
end

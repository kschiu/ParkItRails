class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :buyer_id
      t.integer :seller_id
      t.integer :listing_id
      t.date :date

      t.timestamps
    end
  end
end

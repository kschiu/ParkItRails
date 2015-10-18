class AddColsToPurchase < ActiveRecord::Migration
  def change
  	add_column :purchases, :make, :string
  	add_column :purchases, :model, :string
  	add_column :purchases, :license, :string
  end
end

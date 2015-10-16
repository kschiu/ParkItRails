class AddMinToCampusToListings < ActiveRecord::Migration
  def change
    add_column :listings, :min_to_campus, :integer
  end
end

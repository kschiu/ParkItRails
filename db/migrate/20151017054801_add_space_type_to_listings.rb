class AddSpaceTypeToListings < ActiveRecord::Migration
  def change
    add_column :listings, :space_type, :string
  end
end

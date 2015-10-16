class RemoveMinToCampusFromLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :min_to_campus, :integer
  end
end

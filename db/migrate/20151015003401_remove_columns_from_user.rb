class RemoveColumnsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :password, :string
    remove_column :users, :password_disgest, :string
  end
end

class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.string :card_number
      t.string :expiration_date
      t.string :holder_name
      t.string :card_type
      t.string :security_code

      t.timestamps
    end
  end
end

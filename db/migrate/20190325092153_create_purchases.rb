class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|

      t.integer :user_id
	  t.string :sum
	  # integer => tinyint
	  t.string :delivery_status
	  # integer => tinyint
	  t.integer :payment
	  t.string :add_postcode
	  t.string :add_address
	  t.string :add_number
      t.timestamps
    end
  end
end
class CreateShoppingHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_histories do |t|

      t.integer :product_id
      t.integer :purchase_id
      t.string :quantity
      t.string :paid_price
      t.timestamps
    end
  end
end

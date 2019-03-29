            class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.integer :cd_genre_id
      t.integer :cd_label_id
      # integer => tinyint
      t.integer :cd_type
      t.string :cd_name
      t.text :owner_comment
      t.string :image_id
      t.integer :price
      t.date :saled_date
      t.integer :stock_number
      t.boolean :delete_status
      t.timestamps
    end
  end
end

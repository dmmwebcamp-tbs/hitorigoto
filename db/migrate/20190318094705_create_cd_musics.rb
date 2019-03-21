class CreateCdMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :cd_musics do |t|

      t.string :music_name
      t.integer :product_id
      t.integer :cd_artist_id
      t.integer :disc_number
      t.integer :track_number
      t.timestamps
    end
  end
end

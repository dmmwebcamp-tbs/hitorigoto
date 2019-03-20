class CreateCdArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :cd_artists do |t|

      # integer => tinyint
      t.integer :cd_category
      t.string :artist_name
      t.timestamps
    end
  end
end

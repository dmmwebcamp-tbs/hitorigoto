class CreateCdGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :cd_genres do |t|

      t.string :genre_name
      t.timestamps
    end
  end
end

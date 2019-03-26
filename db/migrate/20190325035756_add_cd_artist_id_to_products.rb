class AddCdArtistIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :cd_artist_id, :integer
  end
end

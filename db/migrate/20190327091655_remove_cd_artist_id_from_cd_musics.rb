class RemoveCdArtistIdFromCdMusics < ActiveRecord::Migration[5.2]
  def change
    remove_column :cd_musics, :cd_artist_id, :integer
  end
end

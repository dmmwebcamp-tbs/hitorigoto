class CdArtist < ApplicationRecord
	has_many :cd_musics
	has_many :products, through: :cd_music
end

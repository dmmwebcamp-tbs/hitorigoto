class CdMusic < ApplicationRecord
	belongs_to :product
	belongs_to :cd_artist
end

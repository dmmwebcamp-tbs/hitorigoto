class CdArtist < ApplicationRecord

  has_many :products

       def self.search(search)
      if search
        CdArtist.where(['artist_name LIKE ?',
        			   "%#{search}%"])
      else
        CdArtist.all
      end
  	end
end

class Product < ApplicationRecord

    attachment :image
    has_many :cd_musics
    has_many :cd_artists, through: :cd_musics
    has_many :cart_products

end

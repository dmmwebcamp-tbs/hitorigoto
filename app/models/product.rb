class Product < ApplicationRecord

    attachment :image
    has_many :cd_musics, dependent: :destroy
    accepts_nested_attributes_for :cd_musics, reject_if: :all_blank, allow_destroy: true

end

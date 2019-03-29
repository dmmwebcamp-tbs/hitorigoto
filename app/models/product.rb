class Product < ApplicationRecord

    attachment :image
    has_many :cd_musics, dependent: :destroy
    accepts_nested_attributes_for :cd_musics, reject_if: :all_blank, allow_destroy: true

     # 中間テーブル用
     has_many :cart_products
     has_many :users, through: :carts_products

     belongs_to :cd_artist

     belongs_to :cd_label

end

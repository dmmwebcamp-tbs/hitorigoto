class CartProduct < ApplicationRecord

    # 中間テーブル用
	belongs_to :user
	belongs_to :product

end

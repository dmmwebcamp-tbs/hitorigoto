class CartProduct < ApplicationRecord

	belongs_to :User
	belongs_to :Product

end

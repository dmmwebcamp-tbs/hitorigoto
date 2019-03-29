class ShoppingHistory < ApplicationRecord

    belongs_to :purchase
    belongs_to :user
    belongs_to :product

end

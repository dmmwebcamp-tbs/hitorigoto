class Purchase < ApplicationRecord

    has_many :shopping_histories
    belongs_to :user

end

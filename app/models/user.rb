class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # ":recoverable"はパスワードリセット機能を示す。
  has_many :messages
  has_many :putchases

   # 中間テーブル用
   has_many :cart_products
   has_many :products, through: :carts_products



end

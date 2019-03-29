class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # ":recoverable"はパスワードリセット機能を示す。
  has_many :messages
  has_many :purchases

  def self.search(search)
      if search
        User.where(['last_name LIKE ? OR first_name LIKE ?',
        			   "%#{search}%", "%#{search}%" ])
      else
        User.all
      end
  end
end

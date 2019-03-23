class Message < ApplicationRecord
 belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true

  def self.search(search)
      if search
        Message.where(['content LIKE ?', "%#{search}%"])
      else
        Message.all
      end
  end

end

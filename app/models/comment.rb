class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates_uniqueness_of :user, scope: :recipe

  def set_user!(user)
    self.user_id = user.id
  end
end

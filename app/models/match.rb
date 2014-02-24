class Match
  include ActiveModel::Model
  include GoogleDocPersistence

  attr_accessor :user_id, :match_1, :match_2, :match_3

  validates :user_id, presence: true

  def user
    @user ||= User.find(user_id)
  end
end

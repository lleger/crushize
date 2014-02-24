class Match
  include ActiveModel::Model

  attr_accessor :user_id, :match_1, :match_2, :match_3

  validates :user_id, presence: true
end

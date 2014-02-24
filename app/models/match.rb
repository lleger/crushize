class Match
  include ActiveModel::Model
  include GoogleDocPersistence

  attr_accessor :user_id, :match_1, :match_2, :match_3

  validates :user_id, presence: true
  validate :matches_present
  # TODO: Validate `@`

  def user
    @user ||= User.find(user_id)
  end

  private

  def matches_present
    if match_1.blank? && match_2.blank? && match_3.blank?
      errors.add :base, "You must specify at least one match."
    end
  end
end

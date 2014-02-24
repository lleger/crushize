module Sessions
  extend ActiveSupport::Concern

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  included do
    helper_method :current_user
  end
end

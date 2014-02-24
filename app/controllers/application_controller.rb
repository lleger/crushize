class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Sessions

  private

  def current_step
    if current_user
      if session[:finished] == true
        :wait
      else
        :form
      end
    else
      :sign_in
    end
  end
  helper_method :current_step
end

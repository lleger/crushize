module ApplicationHelper
  def body_class
    [controller_name, action_name].compact.join(' ')
  end

  def render_google_analytics
    render 'ga' if Rails.env.production?
  end
end

module ApplicationHelper
  def body_class
    [controller_name, action_name].compact.join(' ')
  end

  def flash_block
    output = ''
    flash.each do |type, message|
      type = :warning if type == :notice
      output += flash_container(type, message)
    end

    output.html_safe
  end

  def flash_container(type, message)
    content_tag(:div, class: "alert alert-dismissable alert-#{type}") do
      output = content_tag(:button, raw('&times;'),
                           class: 'close',
                           data: { dismiss: 'alert' },
                           'aria-hidden' => true)
      output += message.html_safe
      output
    end
  end

  def render_google_analytics
    render 'ga' if Rails.env.production?
  end
end

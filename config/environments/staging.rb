require_relative 'production'

Mail.register_interceptor RecipientInterceptor.new(ENV['EMAIL_RECIPIENTS'])

Crushize::Application.configure do
  # Set host for link helpers in emails
  config.action_mailer.default_url_options = {
    host: 'staging.campsandcampers.com'
  }
end

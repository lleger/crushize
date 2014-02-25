source 'https://rubygems.org'
ruby '2.1.1'

gem 'rails', '4.0.3'

gem 'pg'

gem 'unicorn'
gem 'rack-timeout'

gem 'omniauth-twitter'
gem 'google_drive'

gem 'title'

gem 'sass-rails', '~> 4.0.0'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'

group :development do
  gem 'binding_of_caller'
  gem 'better_errors'
  gem 'foreman'
  gem 'quiet_assets'
end

gem 'recipient_interceptor', group: :staging

group :staging, :production do
  gem 'newrelic_rpm'
  gem 'rails_12factor'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

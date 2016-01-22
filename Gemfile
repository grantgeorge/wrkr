source 'https://rubygems.org'

gem 'rails', '4.2.5'
gem 'rails-api'
gem 'pg'
gem 'active_model_serializers'
gem 'colorize'

# Authentication
gem 'devise_token_auth'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'

# To use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

group :test, :development do
  # Application running
  gem 'spring'

  # Testing
  gem 'rspec-rails'
  gem 'faker'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'spring-commands-rspec'
  gem 'database_cleaner'

  # E2E Testing
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'capybara-webkit'

  # Logging/debugging
  gem 'byebug'
end

group :development do
  gem 'web-console'
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'rubocop', require: false
  gem 'ruby_gntp'
  gem 'guard'
  gem 'guard-rubocop'
  gem 'guard-brakeman'
  gem 'pry-rails'
end

group :production, :staging do
  gem 'rails_12factor'
end

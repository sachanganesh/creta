source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '4.0.3'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'bcrypt-ruby', '~> 3.1.2'
gem 'devise'
gem 'simple_form'
gem 'bootstrap-sass'
gem "font-awesome-rails"

group :development, :test do
	gem 'sqlite3'
	gem 'puma'
	gem "better_errors"
	gem 'binding_of_caller'
	gem 'rspec-rails', '~> 3.0.0.beta'
	gem 'mailcatcher'
end

group :test do
	gem 'capybara'
end

group :production do
	gem 'pg'
	gem 'rails_12factor'
	gem 'mandrill-api'
	gem 'mandrill_mailer'
end

group :doc do
  gem 'sdoc', require: false
end

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

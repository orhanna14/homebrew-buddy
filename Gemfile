# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |_repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

# gem 'bcrypt', '~> 3.1.7'
# gem 'image_processing', '~> 1.2'
# gem 'redis', '~> 4.0'
gem "bootsnap", ">= 1.4.2", require: false
gem "clearance"
gem "jbuilder", "~> 2.7"
gem "pg"
gem "puma"
gem "rails", "~> 6.0.1"
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "rspec-rails"
  gem "rubocop-rails"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "webdrivers"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

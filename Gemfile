# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |_repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

# gem 'bcrypt', '~> 3.1.7'
# gem 'redis', '~> 4.0'
gem "active_storage_validations"
gem "bootsnap", ">= 1.4.2", require: false
gem "bootstrap", "~> 4.4.1"
gem "clearance"
gem "excon"
gem "image_processing", "~> 1.12"
gem "jbuilder", "~> 2.7"
gem "jquery-rails"
gem "mini_magick"
gem "pg"
gem "puma", "~> 4.3"
gem "rails", "~> 6.0.1"
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"
gem "will_paginate"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "rspec-rails"
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "webmock"
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

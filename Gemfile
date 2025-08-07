source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
 

gem 'rails', '~> 7.1.0'
gem 'pg', '~> 1.1'
gem 'puma', '~> 6.0'
gem 'sass-rails', '>= 6' 
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'image_processing', '~> 1.2'
gem 'sprockets-rails'
gem 'importmap-rails'

# Authentication & Authorization
gem 'devise', '~> 4.9'
gem 'pundit'

# Background Jobs & Cache
gem 'sidekiq'
gem 'redis', '~> 5.4'

# UI & Frontend
gem 'tailwindcss-rails'
gem 'view_component'

# API & Serialization
gem 'blueprinter'
gem 'pagy'
 

# Monitoring
gem 'good_job'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.3'
  gem 'annotate'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'shoulda-matchers'
  gem 'simplecov'
end
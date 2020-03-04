source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'rack-cors'
gem 'fast_jsonapi'
gem 'jb'
gem 'rack-cors'
gem 'redis', '~> 4.0'
gem 'redis-rails'
gem 'sidekiq'
gem 'shrine-webdav', git: 'https://github.com/k0va1/shrine-webdav.git'
gem 'shrine'
gem 'graphql'
gem 'dry-validation'
gem 'dry-monads'
gem 'taglib-ruby'
gem 'bcrypt'
gem 'jwt'

group :development, :test do
  gem 'rspec-rails', '~> 3.8'
  gem 'pry-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'dotenv-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'json_matchers'
  gem 'rails-controller-testing'
  gem 'rspec-graphql_matchers'
  gem 'rspec-collection_matchers'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', '~> 0.67.2', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

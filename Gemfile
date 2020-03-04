source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'bootstrap-sass', '~> 3.4.1'
gem 'devise'
gem 'jquery-rails'
gem 'mysql2'
gem 'rails', '~> 6.0'

gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 5.0'

gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem 'bcrypt', '~> 3.1.7'
gem 'will_paginate', '3.2.1'
gem 'bootstrap-will_paginate', '0.0.10'
# gem 'mini_magick', '~> 4.8'

#画像アップロード
gem 'carrierwave'
gem 'rmagick'

gem 'draper'
gem 'pundit'
gem 'ransack'
gem 'enumerize'
gem 'rinku'

group :development, :test do
  gem 'sqlite3'
  gem 'rails-controller-testing'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.6.0'
  gem "factory_bot_rails"
  gem "faker"
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'shoulda-matchers'

end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate'
  gem 'bullet'
  gem 'rubocop', require: false
  gem 'letter_opener_web'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'redis', '~> 3.3'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

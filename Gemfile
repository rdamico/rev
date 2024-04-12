source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.4'

gem 'rails', '~> 6.1.0'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'

gem 'faker'
gem 'name_of_person', '~> 1.1'

gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'bootstrap', '~> 5.2', '>= 5.2.3'
gem 'jquery-rails'

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "annotate"
  gem 'web-console', '>= 4.0.3'
  gem 'listen', '~> 3.2'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

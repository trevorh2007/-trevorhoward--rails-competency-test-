source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = 
  "https://github.com"
end

gem 'rails', '~> 5.1.4'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
    gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'master'
  end
  gem 'capybara'
  gem 'factory_girl_rails', '~> 4.8'
  gem 'database_cleaner', '~> 1.6', '>= 1.6.1'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'devise', '~> 4.3'
gem 'petergate', '~> 1.7', '>= 1.7.5'
gem 'bootstrap', '~> 4.0.0.beta'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
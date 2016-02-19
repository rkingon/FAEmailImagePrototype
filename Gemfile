source 'https://rubygems.org'
ruby '2.2.0'

# Rails Scaffolding
gem 'rails', '4.2.1'
gem 'json', '> 1.7.7'
gem 'puma'
gem 'sqlite3'
gem 'active_model_serializers'
gem 'config'

# Third Party
gem 'gon'
gem 'jquery-rails'
gem "haml-rails", "~> 0.9"
gem 'filesize'
gem 'rmagick'

group :assets do
  gem 'jquery-ui-rails'
  gem 'jquery-ui-themes'
  gem 'sass'
  gem 'sass-rails', '~> 5.0.3'
  gem 'coffee-rails', '~> 4.1.0'
  gem 'therubyracer',  platforms: :ruby
  gem 'ngannotate-rails'
  gem 'uglifier', '>= 1.3.0'
end

group :development, :test do
  gem 'rspec-rails', '> 2.0'
  gem 'shoulda'
  
  # call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # spring speeds you development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Deployment
group :development do
  gem 'capistrano'
  gem 'capistrano-rbenv'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano3-puma'
end
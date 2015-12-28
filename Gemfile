source 'https://rubygems.org'

ruby '2.2.2'
gem 'rack', github: 'rack/rack'
gem 'rails', github: "rails/rails"
gem 'sprockets-rails', github: "rails/sprockets-rails"
gem 'arel', github: "rails/arel"
# Use sqlite3 as the database for Active Record



gem 'carrierwave', github: 'carrierwaveuploader/carrierwave'
gem "mini_magick"


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use ActiveModelSerializers to serialize JSON responses

gem 'active_model_serializers', '~> 0.10.0.rc2'

gem 'active-model-adapter-source', '~> 0.1.7'
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
 gem 'rack-cors'





group :production do
  gem 'pg' ,'0.18.1'
   gem 'rails_12factor', '0.0.2'
end



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'mysql2', '~> 0.3.18'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', github: 'rails/web-console'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

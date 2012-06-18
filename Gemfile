source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem "bootstrap-sass", '2.0.3.1'
gem 'jquery-rails', '~>2.0.0'
gem 'whenever', :require => false
gem 'bootstrap-datepicker-rails', :require => 'bootstrap-datepicker-rails',
                              :git => 'git://github.com/Nerian/bootstrap-datepicker-rails.git'

#User authentication https://github.com/plataformatec/devise
gem "devise", "~> 2.1.0"

#Datepicker in form https://github.com/albertopq/jquery_datepicker
# gem "jquery_datepicker", "0.3.4"
#gem 'formtastic', '2.2.0'

group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.10.0'
  gem 'guard-rspec', '0.5.5'
  #For annotating database schema
  gem 'annotate', '~> 2.4.1.beta1'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~>3.2.4'
  gem 'coffee-rails', '~>3.2.2'
  gem 'uglifier', '1.2.3'
end



group :test do
  gem 'rspec-rails', '2.10.0'
  #For testing
  gem 'capybara', '1.1.2'
  gem 'rb-fchange', '0.0.5'
  gem 'rb-notifu', '0.0.4'
  gem 'win32console', '1.3.0'
end 

group :production do
  gem 'pg', '0.12.2'
end
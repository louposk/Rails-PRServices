# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RailsPrservices::Application.initialize!

<<<<<<< HEAD
# ActionMailer settings
  ActionMailer::Base.smtp_settings = {
  :address  => "mail.projectteam.gr",
  :port  => 25,
  :user_name  => "webmaster@projeccteam.gr",
  :password  => "$*z1$*",
  :authentication  => :login
=======
ActionMailer::Base.smtp_settings = {
:user_name => "app4846269@heroku.com",
:password => "happy61!",
:domain => "yourdomain.com",
:address => "smtp.sendgrid.net",
:port => 587,
:authentication => :plain,
:enable_starttls_auto => true
>>>>>>> customer-mailer
}

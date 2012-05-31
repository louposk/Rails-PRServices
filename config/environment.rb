# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RailsPrservices::Application.initialize!

# ActionMailer settings
  ActionMailer::Base.smtp_settings = {
  :address  => "mail.projectteam.gr",
  :port  => 25,
  :user_name  => "webmaster@projeccteam.gr",
  :password  => "$*z1$*",
  :authentication  => :login
}

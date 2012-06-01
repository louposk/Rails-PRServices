# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RailsPrservices::Application.initialize!

ActionMailer::Base.smtp_settings = {
:user_name => "app4846269@heroku.com",
:password => "happy61!",
:domain => "yourdomain.com",
:address => "smtp.sendgrid.net",
:port => 587,
:authentication => :plain,
:enable_starttls_auto => true
}

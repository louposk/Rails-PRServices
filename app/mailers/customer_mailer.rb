class CustomerMailer < ActionMailer::Base
  default from: "webmaster@projectteam.gr"

  def welcome_email(customer)
    @customer = customer
    @url  = "http://www.projectteam.gr"
    mail(:to => customer.email, :subject => "Welcome to My Awesome Site")
  end
end

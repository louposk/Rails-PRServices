# encoding: utf-8

class HostingMailer < ActionMailer::Base
    default from: "webmaster@projectteam.gr"

  def hosting_expires(hosting)
    @hosting = Hosting.find(hosting)
    @customer = @hosting.customer
    @url  = "http://www.projectteam.gr"
    # return @customer
     mail(:to => @customer.email, 
     	:subject => "Project Team - Η υπηρεσία σας λήγει")
  end
end

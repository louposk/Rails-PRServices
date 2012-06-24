# encoding: utf-8

class AdminMailer < ActionMailer::Base
  default from: '"Project Team" <webmaster@projectteam.gr>'

  def domain_expires(domain, admin)
    @domain = Domain.find(domain)
    @admin = Admin.find(:all)
    @url  = "http://www.projectteam.gr"
    # return @customer
     mail(:to => @customer.email, 
     	:subject => "Λήξη domain #{@domain}")
  end

  def hosting_expires(hosting, admin)
    @hosting = Hosting.find(hosting)
    @admin = admin
    @url  = "http://www.projectteam.gr"
    # return @customer
     mail(:to => @admin.email, 
     	:subject => "Λήξη hosting #{@hosting}")
  end
end

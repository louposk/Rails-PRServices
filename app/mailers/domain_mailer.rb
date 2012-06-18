# encoding: utf-8

class DomainMailer < ActionMailer::Base
  default from: '"Project Team" <webmaster@projectteam.gr>'

  def domain_expires(domain)
    @domain = Domain.find(domain)
    @customer = @domain.customer
    @url  = "http://www.projectteam.gr"
    # return @customer
     mail(:to => @customer.email, 
     	:subject => "Η υπηρεσία σας λήγει")
  end
end

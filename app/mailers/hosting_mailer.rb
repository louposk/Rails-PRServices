class HostingMailer < ActionMailer::Base
    default from: "webmaster@projectteam.gr"

  def hosting_expires(hosting)
    @hosting = hosting
    @url  = "http://www.projectteam.gr"
    return @hosting
    # mail(:to => @hosting.customer.email, :subject => "Project Team - Η υπηρεσίας σας λήγει")
  end
end

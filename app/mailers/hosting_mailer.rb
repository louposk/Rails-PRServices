class HostingMailer < ActionMailer::Base
    default from: "webmaster@projectteam.gr"

  def hosting_expires(hosting)
    @hosting = hosting
	@send_to = "@hosting.name"
    @url  = "http://www.projectteam.gr"
    return @send_to
    # mail(:to => @hosting.customer.email, :subject => "Project Team - Η υπηρεσίας σας λήγει")
  end
end

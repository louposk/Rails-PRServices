module HostingsHelper
	def time(expiration)
		@diafora = expiration.to_time - Time.now
		@expire = expiration
		return @diafora

	end

	def send_expiration_email(hosting)
	    @hosting = hosting
	    #Send an email to the customer for hosting expiration

	    if @hosting
	      HostingMailer.hosting_expires(hosting).deliver
	    end
  end

 
end

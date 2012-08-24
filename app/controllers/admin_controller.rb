class AdminController < ActionController::Base

	def email
	    @domains = Domain.all
	    @hostings = Hosting.all
	    @admins = Admin.all
	    @now = Date.today 

	      @domains.each do |domain|
	        exp = domain.expiration

	          #Αποστολή email ενα μήνα πριν τη λήξη
	          if exp.year == @now.year && exp.day == @now.day && exp.month-1 == @now.month
	            @domain = domain
	            	@admins.each do |admin|
                        AdminMailer.domain_expires(@domain,admin).deliver
                  	end
	          end #if
	      end #each

	      @hostings.each do |hosting|
	        exp = hosting.expiration
	        now = @now

	          #Αποστολή email ενα μήνα πριν τη λήξη
	          if exp.year == now.year && exp.day == now.day && exp.month-1 == now.month
	            @hosting = hosting
	            	@admins.each do |admin|
                        AdminMailer.hosting_expires(@hosting,admin).deliver
                  	end
	          end #if
	      end #each
    end

end
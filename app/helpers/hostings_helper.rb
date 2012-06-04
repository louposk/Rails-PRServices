module HostingsHelper
	def time(expiration)
		@diafora = expiration.to_time - Time.now
		@expire = expiration
		return @diafora

	end
end

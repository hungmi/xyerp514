module ApplicationHelper
	def mobile?
		client = DeviceDetector.new(request.user_agent)
		return client.device_type == "smartphone"
	end

	def active_if(url)
		begin
			"active" if current_page?(url)	
		rescue Exception => e
			"active" if controller_name == url[:controller]
		end
	end
end

module ApplicationHelper
	def mobile?
		client = DeviceDetector.new(request.user_agent)
		return client.device_type == "smartphone"
	end
end

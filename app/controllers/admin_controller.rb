class AdminController < ActionController::Base
	layout "admin"

	before_action :sidebar_notificatin_numbers

	def sidebar_notificatin_numbers
		@manufacturing_records = Admin::ManufacturingRecord.all
	end
end
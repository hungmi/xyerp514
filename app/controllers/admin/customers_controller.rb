class Admin::CustomersController < AdminController
	before_action :find_customer

	def index
	end

	private
	def find_customer
		@customer = Admin::Customer.find(params[:id]) if params[:id]
	end
end
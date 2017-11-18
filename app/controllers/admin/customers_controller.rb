class Admin::CustomersController < AdminController
	before_action :find_customer, :set_nav_title

	def index
		@customers = Admin::Customer.all
	end

	private
	def find_customer
		@customer = Admin::Customer.find(params[:id]) if params[:id]
	end

	def set_nav_title
		@nav_title = "客戶管理"
	end
end
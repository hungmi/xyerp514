class Admin::FactoriesController < AdminController
	before_action :find_factory, :set_nav_title

	def index
		@factories = Admin::Factory.all
	end

	private
	def find_factory
		@factory = Admin::Factory.find(params[:id]) if params[:id]
	end

	def set_nav_title
		@nav_title = "加工廠管理"
	end
end
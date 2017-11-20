class Admin::ProceduresController < AdminController
	before_action :find_procedure, :set_nav_title

	def index
		@procedures = Admin::Procedure.all
	end

	private
	def find_procedure
		@procedure = Admin::Procedure.find(params[:id]) if params[:id]
	end

	def set_nav_title
		@nav_title = "追料"
	end
end
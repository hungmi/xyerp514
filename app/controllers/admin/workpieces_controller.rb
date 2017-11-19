class Admin::WorkpiecesController < AdminController
	before_action :find_workpiece, :set_nav_title

	def index
		@workpieces = if params[:customer_id].present?
			Admin::Workpiece.where(customer_id: params[:customer_id]).all
		else
			Admin::Workpiece.all
		end
	end

	private
	def find_workpiece
		@workpiece = Admin::Workpiece.find(params[:id]) if params[:id]
	end

	def set_nav_title
		@nav_title = "工件管理"
	end
end
class Admin::ManufacturingRecordsController < AdminController
	before_action :find_manufacturing_record, :set_nav_title

	def index
		@manufacturing_records = Admin::ManufacturingRecord.includes(:procedures, :workpiece, procedures: :factory).all.limit(10)
	end

	private
	def find_manufacturing_record
		@manufacturing_record = Admin::ManufacturingRecord.find(params[:id]) if params[:id]
	end

	def set_nav_title
		@nav_title = "追料"
	end
end
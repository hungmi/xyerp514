module ManufacturingRecordHelper
	def render_hint_based_on_arrived_at(manufacturing_record)
		has_been_these_days = how_many_days_at_current_procedure(manufacturing_record)
		if has_been_these_days > 45
			"border-danger"
		elsif has_been_these_days > 30
			"border-warning"
		else
			"border-light"
		end
	end

	def how_many_days_at_current_procedure(manufacturing_record)
		(Date.current - manufacturing_record.previous_procedure.finished_at.to_date).to_i
	end
end
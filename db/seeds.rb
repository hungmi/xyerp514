for i in 1..10 do
	customer = Admin::Customer.create!({
		name: "東台#{i}",
		address: "高雄市路竹區路科三路3號#{i}"
	})

	factory = Admin::Factory.create!({
		name: "工廠#{i}",
		address: "台中市烏日區溪南路三段336-#{i}號",
		skill: "車床"
	})

	for j in 1..10 do
		workpiece = customer.workpieces.create!({
			name: "主軸#{rand(100..999)}",
			picnum: "131128233#{j}#{rand(1000..9999)}"
		})

		manufacturing_record = workpiece.manufacturing_records.create!

		first_procedure_start_at = rand(1..150).days.ago
		finished_at = first_procedure_start_at + rand(1..30).days
		manufacturing_record.procedures.create!({
			factory: factory,
			arrived_at: first_procedure_start_at,
			finished_at: finished_at
		})

		for h in 1..rand(2..3) do
			arrived_at = finished_at
			finished_at = arrived_at + rand(1..30).days
			manufacturing_record.procedures.create!({
				factory: factory,
				arrived_at: arrived_at,
				finished_at: finished_at
			})
		end

		current_work_at = finished_at
		manufacturing_record.procedures.create!({
			factory: factory,
			arrived_at: current_work_at
		})

		for k in 1..rand(2..3) do
			manufacturing_record.procedures.create!({
				factory: factory
			})
		end
	end

	customer.contacts.create!({
		name: "經理#{i}",
		phone: "0932#{rand(100000..999999)}"
	})

	factory.contacts.create!({
		name: "老闆#{i}",
		phone: "0927#{rand(100000..999999)}"
	})
end
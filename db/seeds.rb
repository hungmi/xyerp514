for i in 1..10 do
	customer = Admin::Customer.create({
		name: "東台#{i}",
		address: "高雄市路竹區路科三路3號#{i}"
	})

	for j in 1..30 do
		customer.workpieces.create({
			name: "主軸#{rand(100..999)}",
			picnum: "1311282331#{rand(100..999)}"
		})
	end

	customer.contacts.create({
		name: "經理#{i}",
		phone: "0932#{rand(100000..999999)}"
	})

	factory = Admin::Factory.create({
		name: "工廠#{i}",
		address: "台中市烏日區溪南路三段336-#{i}號",
		skill: "車床"
	})

	factory.contacts.create({
		name: "老闆#{i}",
		phone: "0927#{rand(100000..999999)}"
	})
end
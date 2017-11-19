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
end
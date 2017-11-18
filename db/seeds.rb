for i in 1..20 do
	Admin::Customer.create({
		name: "東台#{i}",
		address: "高雄市路竹區路科三路3號#{i}"
	})
end
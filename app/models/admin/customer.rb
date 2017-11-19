class Admin::Customer < ApplicationRecord
	enum payment_term: { "cash": 0, "net30": 1 }

	has_many :workpieces
	
	validates :name, :address, presence: true
end

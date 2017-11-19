class Admin::Customer < ApplicationRecord
	enum payment_term: { "cash": 0, "net30": 1 }

	has_many :workpieces
	has_many :contacts
	
	validates :name, :address, presence: true, uniqueness: true
end

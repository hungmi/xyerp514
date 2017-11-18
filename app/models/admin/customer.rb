class Admin::Customer < ApplicationRecord
	validates :name, :address, presence: true
	enum payment_term: { "cash": 0, "net30": 1 }
end

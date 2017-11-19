class Admin::Contact < ApplicationRecord
	belongs_to :customer, optional: true
	belongs_to :factory, optional: true

	validates :name, :phone, uniqueness: true, presence: true
end

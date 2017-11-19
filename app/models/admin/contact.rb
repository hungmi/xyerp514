class Admin::Contact < ApplicationRecord
	validates :name, presence: true
	
	belongs_to :customer, optional: true
	belongs_to :factory, optional: true
end

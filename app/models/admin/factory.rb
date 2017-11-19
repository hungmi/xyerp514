class Admin::Factory < ApplicationRecord
	has_many :procedures
	has_many :contacts

	validates :name, :address, :skill, presence: true

end

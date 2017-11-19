class Admin::Factory < ApplicationRecord
	has_many :procedures
	has_many :contacts

	validates :skill, presence: true
	validates :name, :address, presence: true, uniqueness: true
end

class Admin::Workpiece < ApplicationRecord
	belongs_to :customer
	has_many :manufacturing_records

	validates :name, :picnum, presence: true
end
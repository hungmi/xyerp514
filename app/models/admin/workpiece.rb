class Admin::Workpiece < ApplicationRecord
	belongs_to :customer
	has_many :manufacturing_records

	validates :name, presence: true
	validates :picnum, presence: true, uniqueness: true
end
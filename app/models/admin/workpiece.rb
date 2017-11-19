class Admin::Workpiece < ApplicationRecord
	validates :name, :picnum, presence: true
	belongs_to :customer
	has_many :manufacturing_records
end
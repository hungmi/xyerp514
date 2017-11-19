class Admin::ManufacturingRecord < ApplicationRecord
	has_secure_token
	
	validates :token, uniqueness: true

  belongs_to :workpiece
end

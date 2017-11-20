class Admin::ManufacturingRecord < ApplicationRecord
	has_secure_token

	validates :token, uniqueness: true

  belongs_to :workpiece
  has_many :procedures, dependent: :destroy

  def first_procedure
  	self.procedures.where("arrived_at IS NOT NULL").order(:arrived_at).first
  end

  def previous_procedure
  	self.procedures.where("finished_at IS NOT NULL").order(:finished_at).last
  end

  def current_procedure
  	self.procedures.where(finished_at: nil).order(:arrived_at).first
  end

  def next_procedure
  	if self.procedures.where(finished_at: nil).size > 1
  		self.procedures.where(finished_at: nil).order(:arrived_at)[1]
  	else
  		nil
  	end
  end
end

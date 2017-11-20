require 'test_helper'

class Admin::ProcedureTest < ActiveSupport::TestCase
  def setup
  	@procedure = admin_procedures(:valid)
  end

  test "procedure should belongs to a factory" do
  	assert @procedure.factory.present?
  end

  test "procedure should belongs to a manufacturing record" do
  	assert @procedure.manufacturing_record.present?
  end
end

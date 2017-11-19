require 'test_helper'

class Admin::ManufacturingRecordTest < ActiveSupport::TestCase
  def setup
  	@manufacturing_record = admin_manufacturing_records(:valid)
  end

  test "manufacturing_record should belongs to a workpiece" do
  	assert @manufacturing_record.workpiece.present?
  end

  test "manufacturing_records can't have same token" do
  	@dup_manufacturing_record = @manufacturing_record.dup
  	refute @dup_manufacturing_record.valid?, "dup_manufacturing_record is not valid for same token"
  end
end

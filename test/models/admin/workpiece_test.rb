require 'test_helper'

class Admin::WorkpieceTest < ActiveSupport::TestCase
	def setup
		@workpiece = admin_workpieces(:valid)
	end

  test "valid workpiece" do
  	assert @workpiece.valid?
  end

  test "workpiece should have a name" do
  	@workpiece.name = nil
  	refute @workpiece.valid?, "workpiece is not valid without a name"
  	assert_not_nil @workpiece.errors[:name], "no validation error for workpiece name"
  end

  test "workpiece should have a picnum" do
  	@workpiece.picnum = nil
  	refute @workpiece.valid?, "workpiece is not valid without a picnum"
  	assert_not_nil @workpiece.errors[:picnum], "no validation error for workpiece picnum"
  end
end

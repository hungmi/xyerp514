require 'test_helper'

class Admin::CustomerTest < ActiveSupport::TestCase
	def setup
		@customer = admin_customers(:valid)
	end

  test "valid customer" do
  	assert @customer.valid?
  end

  test "customer should have an name" do
  	@customer.name = nil
  	refute @customer.valid?, "customer is not valid without an name"
  	assert_not_nil @customer.errors[:name], "no validation error for customer name"
  end

  test "customer should have an address" do
  	@customer.address = nil
  	refute @customer.valid?, "customer is not valid without an address"
  	assert_not_nil @customer.errors[:address], "no validation error for customer address"
  end

  test "customer should pay in cash by default" do
  	assert @customer.cash?
  end

  test "a customer have many workpieces" do
    # NOTE 因為 workpiece.yml 裡面有一個 valid 的 customer 就是設定成這個 @customer
    assert_equal 1, @customer.workpieces.size
  end

  test "a customer can have one contact" do
    assert_equal 1, @customer.contacts.size
  end

  test "customers can't have same name" do
    @dup_customer = @customer.dup
    @dup_customer.address = "different address"
    refute @dup_customer.valid?, "dup_customer is not valid for same name"
  end

  test "customers can't have same address" do
    @dup_customer = @customer.dup
    @dup_customer.name = "different name"
    refute @dup_customer.valid?, "dup_customer is not valid for same address"
  end
end

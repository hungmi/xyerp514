require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
	def setup
		@customer = customers(:valid)
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
end

require 'test_helper'

class Admin::FactoryTest < ActiveSupport::TestCase
	def setup
		@factory = admin_factories(:valid)
	end

  test "valid factory" do
  	assert @factory.valid?
  end

  test "factory should have an name" do
  	@factory.name = nil
  	refute @factory.valid?, "factory is not valid without an name"
  	assert_not_nil @factory.errors[:name], "no validation error for factory name"
  end

  test "factory should have an address" do
  	@factory.address = nil
  	refute @factory.valid?, "factory is not valid without an address"
  	assert_not_nil @factory.errors[:address], "no validation error for factory address"
  end

  test "factory should have an skill" do
  	@factory.skill = nil
  	refute @factory.valid?, "factory is not valid without an skill"
  	assert_not_nil @factory.errors[:skill], "no validation error for factory skill"
  end

  test "a factory can have one contact" do
    assert_equal 1, @factory.contacts.size
  end
end

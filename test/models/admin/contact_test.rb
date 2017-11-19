require 'test_helper'

class Admin::ContactTest < ActiveSupport::TestCase
 	def setup
		@contact = admin_contacts(:valid)
	end

  test "valid contact" do
  	assert @contact.valid?
  end

  test "contact should have an name" do
  	@contact.name = nil
  	refute @contact.valid?, "contact is not valid without an name"
  	assert_not_nil @contact.errors[:name], "no validation error for contact name"
  end
end

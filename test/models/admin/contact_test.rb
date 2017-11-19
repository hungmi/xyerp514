require 'test_helper'

class Admin::ContactTest < ActiveSupport::TestCase
 	def setup
		@contact = admin_contacts(:valid)
	end

  test "valid contact" do
  	assert @contact.valid?, @contact.errors.full_messages
  end

  test "contact should have an name" do
  	@contact.name = nil
  	refute @contact.valid?, "contact is not valid without an name"
  	assert_not_nil @contact.errors[:name], "no validation error for contact name"
  end

  test "contact should have a phone" do
  	@contact.phone = nil
  	refute @contact.valid?, "contact is not valid without a phone"
  	assert_not_nil @contact.errors[:phone], "no validation error for contact phone"
  end

  test "contacts can't have same name" do
  	@dup_contact = @contact.dup
  	@dup_contact.phone = "different phone"
  	refute @dup_contact.valid?, "dup_contact is not valid for same name"
  end

  test "contacts can't have same phone" do
  	@dup_contact = @contact.dup
  	@dup_contact.name = "different name"
  	refute @dup_contact.valid?, "dup_contact is not valid for same phone"
  end
end

require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(name: "Example User", email: "user@example.com", role: "Customer", password_confirmation: "foobar")
	end

	test "should be valid" do
		assert @user.valid?
	end

	test "name should be present" do
		@user.name = "	"
		assert_not @user.valid?
	end

	
	test "email should be present" do
		@user.email = "	"
		assert_not @user.valid?
	end
	
	test "role should be present" do
		@user.role = "	"
		assert_not @user.valid?
	end

	test "password should have a minimum length" do
		@user.password = @user.password_confirmation = "a" * 5
		assert_not @user.valid?
	end
end

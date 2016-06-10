require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Tyler Brown", email: "tyler@sliceofnet.com", password: "123456", password_confirmation: "123456")
  end

  test "user is valid" do
    assert @user.valid?
  end

  test "name is required" do
    @user.name = ""
    assert @user.invalid?
  end

  test "email is required" do
    @user.email = ""
    assert @user.invalid?
  end

  test "password is required" do
    @user.password = ""
    @user.password_confirmation = ""
    assert @user.invalid?
  end

end

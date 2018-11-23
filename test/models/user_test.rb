require 'test_helper'

class UserTest < ActiveSupport::TestCase

    def setup
      @user = User.new(email: "user@example.com",  encrypted_password: "foobartest")
    end


    test "email should be present" do
          @user.email = "     "
          assert_not @user.valid?
        end
end

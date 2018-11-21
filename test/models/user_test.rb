require 'test_helper'

class UserTest < ActiveSupport::TestCase

    def setup
      @user = User.new(email: "user@example.com",  encrypted_password: "foobartest")
    end


    test "email should be present" do
          @user.email = "     "
          assert_not @user.valid?
        end

    test "email validation should accept valid addresses" do
       valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                            first.last@foo.jp alice+bob@baz.cn]
       valid_addresses.each do |valid_address|
         @michael.email = valid_address
         assert @user.valid?, "#{valid_address.inspect} should be valid"
       end
     end
end

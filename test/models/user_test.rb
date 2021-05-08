require "test_helper"

class UserTest < ActiveSupport::TestCase

  test "should not save user without name" do
     user = User.new
     user.save
   end

   


end

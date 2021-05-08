require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
 
  test "should get show" do 
    get `users#show_url(User.first)`
  end


end

require "test_helper"

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get api_login_url
    assert_response :success
  end

  test "should get prices" do
    get api_prices_url
    assert_response :success
  end
end

require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get intex" do
    get home_intex_url
    assert_response :success
  end
end

require "test_helper"

class ExcusesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get excuses_show_url
    assert_response :success
  end
end

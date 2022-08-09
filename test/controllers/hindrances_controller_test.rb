require "test_helper"

class HindrancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hindrance = hindrances(:one)
  end

  test "should get index" do
    get hindrances_url
    assert_response :success
  end

  test "should get new" do
    get new_hindrance_url
    assert_response :success
  end

  test "should create hindrance" do
    assert_difference("Hindrance.count") do
      post hindrances_url, params: { hindrance: { name: @hindrance.name } }
    end

    assert_redirected_to hindrance_url(Hindrance.last)
  end

  test "should show hindrance" do
    get hindrance_url(@hindrance)
    assert_response :success
  end

  test "should get edit" do
    get edit_hindrance_url(@hindrance)
    assert_response :success
  end

  test "should update hindrance" do
    patch hindrance_url(@hindrance), params: { hindrance: { name: @hindrance.name } }
    assert_redirected_to hindrance_url(@hindrance)
  end

  test "should destroy hindrance" do
    assert_difference("Hindrance.count", -1) do
      delete hindrance_url(@hindrance)
    end

    assert_redirected_to hindrances_url
  end
end

require "test_helper"

class BreweriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get breweries_index_url
    assert_response :success
  end

  test "should get create" do
    get breweries_create_url
    assert_response :success
  end

  test "should get new" do
    get breweries_new_url
    assert_response :success
  end

  test "should get show" do
    get breweries_show_url
    assert_response :success
  end
end

require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get boy" do
    get categories_boy_url
    assert_response :success
  end

  test "should get girl" do
    get categories_girl_url
    assert_response :success
  end
end

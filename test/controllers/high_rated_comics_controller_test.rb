require "test_helper"

class HighRatedComicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get high_rated_comics_index_url
    assert_response :success
  end
end

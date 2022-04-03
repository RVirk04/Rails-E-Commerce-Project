require "test_helper"

class VirkControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get virk_index_url
    assert_response :success
  end
end

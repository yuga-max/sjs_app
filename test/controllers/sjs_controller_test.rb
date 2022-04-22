require "test_helper"

class SjsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sjs_index_url
    assert_response :success
  end
end

require "test_helper"

class ExternalPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get external_pages_show_url
    assert_response :success
  end
end

require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get firstpage" do
    get home_firstpage_url
    assert_response :success
  end
end

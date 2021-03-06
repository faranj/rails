require "test_helper"

class FablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fable = fables(:one)
  end

  test "should get index" do
    get fables_url
    assert_response :success
  end

  test "should get new" do
    get new_fable_url
    assert_response :success
  end

  test "should create fable" do
    assert_difference('Fable.count') do
      post fables_url, params: { fable: { email: @fable.email, first_name: @fable.first_name, last_name: @fable.last_name, phone: @fable.phone, twitter: @fable.twitter } }
    end

    assert_redirected_to fable_url(Fable.last)
  end

  test "should show fable" do
    get fable_url(@fable)
    assert_response :success
  end

  test "should get edit" do
    get edit_fable_url(@fable)
    assert_response :success
  end

  test "should update fable" do
    patch fable_url(@fable), params: { fable: { email: @fable.email, first_name: @fable.first_name, last_name: @fable.last_name, phone: @fable.phone, twitter: @fable.twitter } }
    assert_redirected_to fable_url(@fable)
  end

  test "should destroy fable" do
    assert_difference('Fable.count', -1) do
      delete fable_url(@fable)
    end

    assert_redirected_to fables_url
  end
end

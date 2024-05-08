require "test_helper"

class MalopointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @malopoint = malopoints(:one)
  end

  test "should get index" do
    get malopoints_url
    assert_response :success
  end

  test "should get new" do
    get new_malopoint_url
    assert_response :success
  end

  test "should create malopoint" do
    assert_difference("Malopoint.count") do
      post malopoints_url, params: { malopoint: { name: @malopoint.name, string: @malopoint.string } }
    end

    assert_redirected_to malopoint_url(Malopoint.last)
  end

  test "should show malopoint" do
    get malopoint_url(@malopoint)
    assert_response :success
  end

  test "should get edit" do
    get edit_malopoint_url(@malopoint)
    assert_response :success
  end

  test "should update malopoint" do
    patch malopoint_url(@malopoint), params: { malopoint: { name: @malopoint.name, string: @malopoint.string } }
    assert_redirected_to malopoint_url(@malopoint)
  end

  test "should destroy malopoint" do
    assert_difference("Malopoint.count", -1) do
      delete malopoint_url(@malopoint)
    end

    assert_redirected_to malopoints_url
  end
end

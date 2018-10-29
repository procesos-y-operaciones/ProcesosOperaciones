require 'test_helper'

class PhasesUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phases_user = phases_users(:one)
  end

  test "should get index" do
    get phases_users_url
    assert_response :success
  end

  test "should get new" do
    get new_phases_user_url
    assert_response :success
  end

  test "should create phases_user" do
    assert_difference('PhasesUser.count') do
      post phases_users_url, params: { phases_user: {  } }
    end

    assert_redirected_to phases_user_url(PhasesUser.last)
  end

  test "should show phases_user" do
    get phases_user_url(@phases_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_phases_user_url(@phases_user)
    assert_response :success
  end

  test "should update phases_user" do
    patch phases_user_url(@phases_user), params: { phases_user: {  } }
    assert_redirected_to phases_user_url(@phases_user)
  end

  test "should destroy phases_user" do
    assert_difference('PhasesUser.count', -1) do
      delete phases_user_url(@phases_user)
    end

    assert_redirected_to phases_users_url
  end
end

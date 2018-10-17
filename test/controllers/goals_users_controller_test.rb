require 'test_helper'

class GoalsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goals_user = goals_users(:one)
  end

  test "should get index" do
    get goals_users_url
    assert_response :success
  end

  test "should get new" do
    get new_goals_user_url
    assert_response :success
  end

  test "should create goals_user" do
    assert_difference('GoalsUser.count') do
      post goals_users_url, params: { goals_user: {  } }
    end

    assert_redirected_to goals_user_url(GoalsUser.last)
  end

  test "should show goals_user" do
    get goals_user_url(@goals_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_goals_user_url(@goals_user)
    assert_response :success
  end

  test "should update goals_user" do
    patch goals_user_url(@goals_user), params: { goals_user: {  } }
    assert_redirected_to goals_user_url(@goals_user)
  end

  test "should destroy goals_user" do
    assert_difference('GoalsUser.count', -1) do
      delete goals_user_url(@goals_user)
    end

    assert_redirected_to goals_users_url
  end
end

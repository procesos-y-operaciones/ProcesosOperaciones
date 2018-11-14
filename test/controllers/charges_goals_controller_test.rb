require 'test_helper'

class ChargesGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charges_goal = charges_goals(:one)
  end

  test "should get index" do
    get charges_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_charges_goal_url
    assert_response :success
  end

  test "should create charges_goal" do
    assert_difference('ChargesGoal.count') do
      post charges_goals_url, params: { charges_goal: {  } }
    end

    assert_redirected_to charges_goal_url(ChargesGoal.last)
  end

  test "should show charges_goal" do
    get charges_goal_url(@charges_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_charges_goal_url(@charges_goal)
    assert_response :success
  end

  test "should update charges_goal" do
    patch charges_goal_url(@charges_goal), params: { charges_goal: {  } }
    assert_redirected_to charges_goal_url(@charges_goal)
  end

  test "should destroy charges_goal" do
    assert_difference('ChargesGoal.count', -1) do
      delete charges_goal_url(@charges_goal)
    end

    assert_redirected_to charges_goals_url
  end
end

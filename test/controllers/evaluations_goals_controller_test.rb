require 'test_helper'

class EvaluationsGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluations_goal = evaluations_goals(:one)
  end

  test "should get index" do
    get evaluations_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluations_goal_url
    assert_response :success
  end

  test "should create evaluations_goal" do
    assert_difference('EvaluationsGoal.count') do
      post evaluations_goals_url, params: { evaluations_goal: {  } }
    end

    assert_redirected_to evaluations_goal_url(EvaluationsGoal.last)
  end

  test "should show evaluations_goal" do
    get evaluations_goal_url(@evaluations_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluations_goal_url(@evaluations_goal)
    assert_response :success
  end

  test "should update evaluations_goal" do
    patch evaluations_goal_url(@evaluations_goal), params: { evaluations_goal: {  } }
    assert_redirected_to evaluations_goal_url(@evaluations_goal)
  end

  test "should destroy evaluations_goal" do
    assert_difference('EvaluationsGoal.count', -1) do
      delete evaluations_goal_url(@evaluations_goal)
    end

    assert_redirected_to evaluations_goals_url
  end
end

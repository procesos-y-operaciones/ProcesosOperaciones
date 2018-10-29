require 'test_helper'

class GoalsEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goals_evaluation = goals_evaluations(:one)
  end

  test "should get index" do
    get goals_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_goals_evaluation_url
    assert_response :success
  end

  test "should create goals_evaluation" do
    assert_difference('GoalsEvaluation.count') do
      post goals_evaluations_url, params: { goals_evaluation: {  } }
    end

    assert_redirected_to goals_evaluation_url(GoalsEvaluation.last)
  end

  test "should show goals_evaluation" do
    get goals_evaluation_url(@goals_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_goals_evaluation_url(@goals_evaluation)
    assert_response :success
  end

  test "should update goals_evaluation" do
    patch goals_evaluation_url(@goals_evaluation), params: { goals_evaluation: {  } }
    assert_redirected_to goals_evaluation_url(@goals_evaluation)
  end

  test "should destroy goals_evaluation" do
    assert_difference('GoalsEvaluation.count', -1) do
      delete goals_evaluation_url(@goals_evaluation)
    end

    assert_redirected_to goals_evaluations_url
  end
end

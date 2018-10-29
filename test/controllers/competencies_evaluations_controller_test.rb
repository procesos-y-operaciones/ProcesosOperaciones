require 'test_helper'

class CompetenciesEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competencies_evaluation = competencies_evaluations(:one)
  end

  test "should get index" do
    get competencies_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_competencies_evaluation_url
    assert_response :success
  end

  test "should create competencies_evaluation" do
    assert_difference('CompetenciesEvaluation.count') do
      post competencies_evaluations_url, params: { competencies_evaluation: {  } }
    end

    assert_redirected_to competencies_evaluation_url(CompetenciesEvaluation.last)
  end

  test "should show competencies_evaluation" do
    get competencies_evaluation_url(@competencies_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_competencies_evaluation_url(@competencies_evaluation)
    assert_response :success
  end

  test "should update competencies_evaluation" do
    patch competencies_evaluation_url(@competencies_evaluation), params: { competencies_evaluation: {  } }
    assert_redirected_to competencies_evaluation_url(@competencies_evaluation)
  end

  test "should destroy competencies_evaluation" do
    assert_difference('CompetenciesEvaluation.count', -1) do
      delete competencies_evaluation_url(@competencies_evaluation)
    end

    assert_redirected_to competencies_evaluations_url
  end
end

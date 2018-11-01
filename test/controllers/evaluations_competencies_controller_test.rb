require 'test_helper'

class EvaluationsCompetenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluations_competency = evaluations_competencies(:one)
  end

  test "should get index" do
    get evaluations_competencies_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluations_competency_url
    assert_response :success
  end

  test "should create evaluations_competency" do
    assert_difference('EvaluationsCompetency.count') do
      post evaluations_competencies_url, params: { evaluations_competency: {  } }
    end

    assert_redirected_to evaluations_competency_url(EvaluationsCompetency.last)
  end

  test "should show evaluations_competency" do
    get evaluations_competency_url(@evaluations_competency)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluations_competency_url(@evaluations_competency)
    assert_response :success
  end

  test "should update evaluations_competency" do
    patch evaluations_competency_url(@evaluations_competency), params: { evaluations_competency: {  } }
    assert_redirected_to evaluations_competency_url(@evaluations_competency)
  end

  test "should destroy evaluations_competency" do
    assert_difference('EvaluationsCompetency.count', -1) do
      delete evaluations_competency_url(@evaluations_competency)
    end

    assert_redirected_to evaluations_competencies_url
  end
end

require 'test_helper'

class ChargesCompetenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charges_competency = charges_competencies(:one)
  end

  test "should get index" do
    get charges_competencies_url
    assert_response :success
  end

  test "should get new" do
    get new_charges_competency_url
    assert_response :success
  end

  test "should create charges_competency" do
    assert_difference('ChargesCompetency.count') do
      post charges_competencies_url, params: { charges_competency: {  } }
    end

    assert_redirected_to charges_competency_url(ChargesCompetency.last)
  end

  test "should show charges_competency" do
    get charges_competency_url(@charges_competency)
    assert_response :success
  end

  test "should get edit" do
    get edit_charges_competency_url(@charges_competency)
    assert_response :success
  end

  test "should update charges_competency" do
    patch charges_competency_url(@charges_competency), params: { charges_competency: {  } }
    assert_redirected_to charges_competency_url(@charges_competency)
  end

  test "should destroy charges_competency" do
    assert_difference('ChargesCompetency.count', -1) do
      delete charges_competency_url(@charges_competency)
    end

    assert_redirected_to charges_competencies_url
  end
end

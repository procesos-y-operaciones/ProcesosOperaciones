require 'test_helper'

class GenerationRangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generation_range = generation_ranges(:one)
  end

  test "should get index" do
    get generation_ranges_url
    assert_response :success
  end

  test "should get new" do
    get new_generation_range_url
    assert_response :success
  end

  test "should create generation_range" do
    assert_difference('GenerationRange.count') do
      post generation_ranges_url, params: { generation_range: {  } }
    end

    assert_redirected_to generation_range_url(GenerationRange.last)
  end

  test "should show generation_range" do
    get generation_range_url(@generation_range)
    assert_response :success
  end

  test "should get edit" do
    get edit_generation_range_url(@generation_range)
    assert_response :success
  end

  test "should update generation_range" do
    patch generation_range_url(@generation_range), params: { generation_range: {  } }
    assert_redirected_to generation_range_url(@generation_range)
  end

  test "should destroy generation_range" do
    assert_difference('GenerationRange.count', -1) do
      delete generation_range_url(@generation_range)
    end

    assert_redirected_to generation_ranges_url
  end
end

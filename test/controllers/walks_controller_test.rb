require 'test_helper'

class WalksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @walk = walks(:one)
  end

  test "should get index" do
    get walks_url, as: :json
    assert_response :success
  end

  test "should create walk" do
    assert_difference('Walk.count') do
      post walks_url, params: { walk: { date: @walk.date, description: @walk.description, name: @walk.name } }, as: :json
    end

    assert_response 201
  end

  test "should show walk" do
    get walk_url(@walk), as: :json
    assert_response :success
  end

  test "should update walk" do
    patch walk_url(@walk), params: { walk: { date: @walk.date, description: @walk.description, name: @walk.name } }, as: :json
    assert_response 200
  end

  test "should destroy walk" do
    assert_difference('Walk.count', -1) do
      delete walk_url(@walk), as: :json
    end

    assert_response 204
  end
end

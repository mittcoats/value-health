require 'test_helper'

class GamblesControllerTest < ActionController::TestCase
  setup do
    @gamble = gambles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gambles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gamble" do
    assert_difference('Gamble.count') do
      post :create, gamble: { bad_outcome: @gamble.bad_outcome, description: @gamble.description, good_outcome: @gamble.good_outcome, instructions: @gamble.instructions, interval: @gamble.interval, title: @gamble.title }
    end

    assert_redirected_to gamble_path(assigns(:gamble))
  end

  test "should show gamble" do
    get :show, id: @gamble
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gamble
    assert_response :success
  end

  test "should update gamble" do
    patch :update, id: @gamble, gamble: { bad_outcome: @gamble.bad_outcome, description: @gamble.description, good_outcome: @gamble.good_outcome, instructions: @gamble.instructions, interval: @gamble.interval, title: @gamble.title }
    assert_redirected_to gamble_path(assigns(:gamble))
  end

  test "should destroy gamble" do
    assert_difference('Gamble.count', -1) do
      delete :destroy, id: @gamble
    end

    assert_redirected_to gambles_path
  end
end

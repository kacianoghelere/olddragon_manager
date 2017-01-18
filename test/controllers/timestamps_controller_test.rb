require 'test_helper'

class TimestampsControllerTest < ActionController::TestCase
  setup do
    @timestamp = timestamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timestamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timestamp" do
    assert_difference('Timestamp.count') do
      post :create, timestamp: { create_time: @timestamp.create_time, update_time: @timestamp.update_time }
    end

    assert_redirected_to timestamp_path(assigns(:timestamp))
  end

  test "should show timestamp" do
    get :show, id: @timestamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timestamp
    assert_response :success
  end

  test "should update timestamp" do
    patch :update, id: @timestamp, timestamp: { create_time: @timestamp.create_time, update_time: @timestamp.update_time }
    assert_redirected_to timestamp_path(assigns(:timestamp))
  end

  test "should destroy timestamp" do
    assert_difference('Timestamp.count', -1) do
      delete :destroy, id: @timestamp
    end

    assert_redirected_to timestamps_path
  end
end

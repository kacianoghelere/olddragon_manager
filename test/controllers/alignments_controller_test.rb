require 'test_helper'

class AlignmentsControllerTest < ActionController::TestCase
  setup do
    @alignment = alignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alignment" do
    assert_difference('Alignment.count') do
      post :create, alignment: { name: @alignment.name }
    end

    assert_redirected_to alignment_path(assigns(:alignment))
  end

  test "should show alignment" do
    get :show, id: @alignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alignment
    assert_response :success
  end

  test "should update alignment" do
    patch :update, id: @alignment, alignment: { name: @alignment.name }
    assert_redirected_to alignment_path(assigns(:alignment))
  end

  test "should destroy alignment" do
    assert_difference('Alignment.count', -1) do
      delete :destroy, id: @alignment
    end

    assert_redirected_to alignments_path
  end
end

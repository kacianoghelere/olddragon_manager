require 'test_helper'

class ElementTypesControllerTest < ActionController::TestCase
  setup do
    @element_type = element_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:element_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create element_type" do
    assert_difference('ElementType.count') do
      post :create, element_type: { name: @element_type.name }
    end

    assert_redirected_to element_type_path(assigns(:element_type))
  end

  test "should show element_type" do
    get :show, id: @element_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @element_type
    assert_response :success
  end

  test "should update element_type" do
    patch :update, id: @element_type, element_type: { name: @element_type.name }
    assert_redirected_to element_type_path(assigns(:element_type))
  end

  test "should destroy element_type" do
    assert_difference('ElementType.count', -1) do
      delete :destroy, id: @element_type
    end

    assert_redirected_to element_types_path
  end
end

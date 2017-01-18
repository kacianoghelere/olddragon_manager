require 'test_helper'

class MaterialTypesControllerTest < ActionController::TestCase
  setup do
    @material_type = material_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:material_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material_type" do
    assert_difference('MaterialType.count') do
      post :create, material_type: { name: @material_type.name }
    end

    assert_redirected_to material_type_path(assigns(:material_type))
  end

  test "should show material_type" do
    get :show, id: @material_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material_type
    assert_response :success
  end

  test "should update material_type" do
    patch :update, id: @material_type, material_type: { name: @material_type.name }
    assert_redirected_to material_type_path(assigns(:material_type))
  end

  test "should destroy material_type" do
    assert_difference('MaterialType.count', -1) do
      delete :destroy, id: @material_type
    end

    assert_redirected_to material_types_path
  end
end

require 'test_helper'

class ArmorTypesControllerTest < ActionController::TestCase
  setup do
    @armor_type = armor_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:armor_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create armor_type" do
    assert_difference('ArmorType.count') do
      post :create, armor_type: { name: @armor_type.name }
    end

    assert_redirected_to armor_type_path(assigns(:armor_type))
  end

  test "should show armor_type" do
    get :show, id: @armor_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @armor_type
    assert_response :success
  end

  test "should update armor_type" do
    patch :update, id: @armor_type, armor_type: { name: @armor_type.name }
    assert_redirected_to armor_type_path(assigns(:armor_type))
  end

  test "should destroy armor_type" do
    assert_difference('ArmorType.count', -1) do
      delete :destroy, id: @armor_type
    end

    assert_redirected_to armor_types_path
  end
end

require 'test_helper'

class PerkTypesControllerTest < ActionController::TestCase
  setup do
    @perk_type = perk_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perk_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perk_type" do
    assert_difference('PerkType.count') do
      post :create, perk_type: { name: @perk_type.name }
    end

    assert_redirected_to perk_type_path(assigns(:perk_type))
  end

  test "should show perk_type" do
    get :show, id: @perk_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perk_type
    assert_response :success
  end

  test "should update perk_type" do
    patch :update, id: @perk_type, perk_type: { name: @perk_type.name }
    assert_redirected_to perk_type_path(assigns(:perk_type))
  end

  test "should destroy perk_type" do
    assert_difference('PerkType.count', -1) do
      delete :destroy, id: @perk_type
    end

    assert_redirected_to perk_types_path
  end
end

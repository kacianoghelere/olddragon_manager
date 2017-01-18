require 'test_helper'

class EffectTypesControllerTest < ActionController::TestCase
  setup do
    @effect_type = effect_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:effect_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create effect_type" do
    assert_difference('EffectType.count') do
      post :create, effect_type: { name: @effect_type.name }
    end

    assert_redirected_to effect_type_path(assigns(:effect_type))
  end

  test "should show effect_type" do
    get :show, id: @effect_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @effect_type
    assert_response :success
  end

  test "should update effect_type" do
    patch :update, id: @effect_type, effect_type: { name: @effect_type.name }
    assert_redirected_to effect_type_path(assigns(:effect_type))
  end

  test "should destroy effect_type" do
    assert_difference('EffectType.count', -1) do
      delete :destroy, id: @effect_type
    end

    assert_redirected_to effect_types_path
  end
end

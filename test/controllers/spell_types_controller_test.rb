require 'test_helper'

class SpellTypesControllerTest < ActionController::TestCase
  setup do
    @spell_type = spell_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spell_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spell_type" do
    assert_difference('SpellType.count') do
      post :create, spell_type: { name: @spell_type.name }
    end

    assert_redirected_to spell_type_path(assigns(:spell_type))
  end

  test "should show spell_type" do
    get :show, id: @spell_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spell_type
    assert_response :success
  end

  test "should update spell_type" do
    patch :update, id: @spell_type, spell_type: { name: @spell_type.name }
    assert_redirected_to spell_type_path(assigns(:spell_type))
  end

  test "should destroy spell_type" do
    assert_difference('SpellType.count', -1) do
      delete :destroy, id: @spell_type
    end

    assert_redirected_to spell_types_path
  end
end

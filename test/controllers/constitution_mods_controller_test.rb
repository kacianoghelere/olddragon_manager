require 'test_helper'

class ConstitutionModsControllerTest < ActionController::TestCase
  setup do
    @constitution_mod = constitution_mods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:constitution_mods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create constitution_mod" do
    assert_difference('ConstitutionMod.count') do
      post :create, constitution_mod: { hitpoints_mod: @constitution_mod.hitpoints_mod, protection_mod: @constitution_mod.protection_mod, resurrection_mod: @constitution_mod.resurrection_mod, value: @constitution_mod.value }
    end

    assert_redirected_to constitution_mod_path(assigns(:constitution_mod))
  end

  test "should show constitution_mod" do
    get :show, id: @constitution_mod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @constitution_mod
    assert_response :success
  end

  test "should update constitution_mod" do
    patch :update, id: @constitution_mod, constitution_mod: { hitpoints_mod: @constitution_mod.hitpoints_mod, protection_mod: @constitution_mod.protection_mod, resurrection_mod: @constitution_mod.resurrection_mod, value: @constitution_mod.value }
    assert_redirected_to constitution_mod_path(assigns(:constitution_mod))
  end

  test "should destroy constitution_mod" do
    assert_difference('ConstitutionMod.count', -1) do
      delete :destroy, id: @constitution_mod
    end

    assert_redirected_to constitution_mods_path
  end
end

require 'test_helper'

class WisdomModsControllerTest < ActionController::TestCase
  setup do
    @wisdom_mod = wisdom_mods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wisdom_mods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wisdom_mod" do
    assert_difference('WisdomMod.count') do
      post :create, wisdom_mod: { magic_cicle_1_mod: @wisdom_mod.magic_cicle_1_mod, magic_cicle_2_mod: @wisdom_mod.magic_cicle_2_mod, magic_cicle_3_mod: @wisdom_mod.magic_cicle_3_mod, protection_mod: @wisdom_mod.protection_mod, value: @wisdom_mod.value }
    end

    assert_redirected_to wisdom_mod_path(assigns(:wisdom_mod))
  end

  test "should show wisdom_mod" do
    get :show, id: @wisdom_mod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wisdom_mod
    assert_response :success
  end

  test "should update wisdom_mod" do
    patch :update, id: @wisdom_mod, wisdom_mod: { magic_cicle_1_mod: @wisdom_mod.magic_cicle_1_mod, magic_cicle_2_mod: @wisdom_mod.magic_cicle_2_mod, magic_cicle_3_mod: @wisdom_mod.magic_cicle_3_mod, protection_mod: @wisdom_mod.protection_mod, value: @wisdom_mod.value }
    assert_redirected_to wisdom_mod_path(assigns(:wisdom_mod))
  end

  test "should destroy wisdom_mod" do
    assert_difference('WisdomMod.count', -1) do
      delete :destroy, id: @wisdom_mod
    end

    assert_redirected_to wisdom_mods_path
  end
end

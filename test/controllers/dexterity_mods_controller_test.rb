require 'test_helper'

class DexterityModsControllerTest < ActionController::TestCase
  setup do
    @dexterity_mod = dexterity_mods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dexterity_mods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dexterity_mod" do
    assert_difference('DexterityMod.count') do
      post :create, dexterity_mod: { armor_class_mod: @dexterity_mod.armor_class_mod, attack_mod: @dexterity_mod.attack_mod, find_traps_mod: @dexterity_mod.find_traps_mod, lockpick_mod: @dexterity_mod.lockpick_mod, pickpocket_mod: @dexterity_mod.pickpocket_mod, protection_mod: @dexterity_mod.protection_mod, silent_movement_mod: @dexterity_mod.silent_movement_mod, stealth_mod: @dexterity_mod.stealth_mod, surprise_mod: @dexterity_mod.surprise_mod, value: @dexterity_mod.value }
    end

    assert_redirected_to dexterity_mod_path(assigns(:dexterity_mod))
  end

  test "should show dexterity_mod" do
    get :show, id: @dexterity_mod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dexterity_mod
    assert_response :success
  end

  test "should update dexterity_mod" do
    patch :update, id: @dexterity_mod, dexterity_mod: { armor_class_mod: @dexterity_mod.armor_class_mod, attack_mod: @dexterity_mod.attack_mod, find_traps_mod: @dexterity_mod.find_traps_mod, lockpick_mod: @dexterity_mod.lockpick_mod, pickpocket_mod: @dexterity_mod.pickpocket_mod, protection_mod: @dexterity_mod.protection_mod, silent_movement_mod: @dexterity_mod.silent_movement_mod, stealth_mod: @dexterity_mod.stealth_mod, surprise_mod: @dexterity_mod.surprise_mod, value: @dexterity_mod.value }
    assert_redirected_to dexterity_mod_path(assigns(:dexterity_mod))
  end

  test "should destroy dexterity_mod" do
    assert_difference('DexterityMod.count', -1) do
      delete :destroy, id: @dexterity_mod
    end

    assert_redirected_to dexterity_mods_path
  end
end

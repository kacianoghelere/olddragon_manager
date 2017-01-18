require 'test_helper'

class IntelligenceModsControllerTest < ActionController::TestCase
  setup do
    @intelligence_mod = intelligence_mods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intelligence_mods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intelligence_mod" do
    assert_difference('IntelligenceMod.count') do
      post :create, intelligence_mod: { languages_mod: @intelligence_mod.languages_mod, learn_magic_mod: @intelligence_mod.learn_magic_mod, magic_circle_1_mod: @intelligence_mod.magic_circle_1_mod, magic_circle_2_mod: @intelligence_mod.magic_circle_2_mod, magic_circle_3_mod: @intelligence_mod.magic_circle_3_mod, magic_circle_4_mod: @intelligence_mod.magic_circle_4_mod, magic_circle_5_mod: @intelligence_mod.magic_circle_5_mod, magic_circle_6_mod: @intelligence_mod.magic_circle_6_mod, magic_circle_7_mod: @intelligence_mod.magic_circle_7_mod, magic_circle_8_mod: @intelligence_mod.magic_circle_8_mod, magic_circle_9_mod: @intelligence_mod.magic_circle_9_mod, value: @intelligence_mod.value }
    end

    assert_redirected_to intelligence_mod_path(assigns(:intelligence_mod))
  end

  test "should show intelligence_mod" do
    get :show, id: @intelligence_mod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intelligence_mod
    assert_response :success
  end

  test "should update intelligence_mod" do
    patch :update, id: @intelligence_mod, intelligence_mod: { languages_mod: @intelligence_mod.languages_mod, learn_magic_mod: @intelligence_mod.learn_magic_mod, magic_circle_1_mod: @intelligence_mod.magic_circle_1_mod, magic_circle_2_mod: @intelligence_mod.magic_circle_2_mod, magic_circle_3_mod: @intelligence_mod.magic_circle_3_mod, magic_circle_4_mod: @intelligence_mod.magic_circle_4_mod, magic_circle_5_mod: @intelligence_mod.magic_circle_5_mod, magic_circle_6_mod: @intelligence_mod.magic_circle_6_mod, magic_circle_7_mod: @intelligence_mod.magic_circle_7_mod, magic_circle_8_mod: @intelligence_mod.magic_circle_8_mod, magic_circle_9_mod: @intelligence_mod.magic_circle_9_mod, value: @intelligence_mod.value }
    assert_redirected_to intelligence_mod_path(assigns(:intelligence_mod))
  end

  test "should destroy intelligence_mod" do
    assert_difference('IntelligenceMod.count', -1) do
      delete :destroy, id: @intelligence_mod
    end

    assert_redirected_to intelligence_mods_path
  end
end

require 'test_helper'

class UndeadBanesControllerTest < ActionController::TestCase
  setup do
    @undead_bane = undead_banes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:undead_banes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create undead_bane" do
    assert_difference('UndeadBane.count') do
      post :create, undead_bane: { aparition_mod: @undead_bane.aparition_mod, ghoul_mod: @undead_bane.ghoul_mod, inhuman_mod: @undead_bane.inhuman_mod, level: @undead_bane.level, mummy_mod: @undead_bane.mummy_mod, skelleton_mod: @undead_bane.skelleton_mod, specter_mod: @undead_bane.specter_mod, vampire_mod: @undead_bane.vampire_mod, zombie_mod: @undead_bane.zombie_mod }
    end

    assert_redirected_to undead_bane_path(assigns(:undead_bane))
  end

  test "should show undead_bane" do
    get :show, id: @undead_bane
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @undead_bane
    assert_response :success
  end

  test "should update undead_bane" do
    patch :update, id: @undead_bane, undead_bane: { aparition_mod: @undead_bane.aparition_mod, ghoul_mod: @undead_bane.ghoul_mod, inhuman_mod: @undead_bane.inhuman_mod, level: @undead_bane.level, mummy_mod: @undead_bane.mummy_mod, skelleton_mod: @undead_bane.skelleton_mod, specter_mod: @undead_bane.specter_mod, vampire_mod: @undead_bane.vampire_mod, zombie_mod: @undead_bane.zombie_mod }
    assert_redirected_to undead_bane_path(assigns(:undead_bane))
  end

  test "should destroy undead_bane" do
    assert_difference('UndeadBane.count', -1) do
      delete :destroy, id: @undead_bane
    end

    assert_redirected_to undead_banes_path
  end
end

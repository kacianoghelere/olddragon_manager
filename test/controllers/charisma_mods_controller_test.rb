require 'test_helper'

class CharismaModsControllerTest < ActionController::TestCase
  setup do
    @charisma_mod = charisma_mods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charisma_mods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charisma_mod" do
    assert_difference('CharismaMod.count') do
      post :create, charisma_mod: { followers_mod: @charisma_mod.followers_mod, reaction_mod: @charisma_mod.reaction_mod, undead_mod: @charisma_mod.undead_mod, value: @charisma_mod.value }
    end

    assert_redirected_to charisma_mod_path(assigns(:charisma_mod))
  end

  test "should show charisma_mod" do
    get :show, id: @charisma_mod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @charisma_mod
    assert_response :success
  end

  test "should update charisma_mod" do
    patch :update, id: @charisma_mod, charisma_mod: { followers_mod: @charisma_mod.followers_mod, reaction_mod: @charisma_mod.reaction_mod, undead_mod: @charisma_mod.undead_mod, value: @charisma_mod.value }
    assert_redirected_to charisma_mod_path(assigns(:charisma_mod))
  end

  test "should destroy charisma_mod" do
    assert_difference('CharismaMod.count', -1) do
      delete :destroy, id: @charisma_mod
    end

    assert_redirected_to charisma_mods_path
  end
end

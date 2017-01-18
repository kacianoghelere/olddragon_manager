require 'test_helper'

class CharacterRaceWeaponsControllerTest < ActionController::TestCase
  setup do
    @character_race_weapon = character_race_weapons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_race_weapons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_race_weapon" do
    assert_difference('CharacterRaceWeapon.count') do
      post :create, character_race_weapon: { character_race_id: @character_race_weapon.character_race_id, weapon_type_id: @character_race_weapon.weapon_type_id }
    end

    assert_redirected_to character_race_weapon_path(assigns(:character_race_weapon))
  end

  test "should show character_race_weapon" do
    get :show, id: @character_race_weapon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_race_weapon
    assert_response :success
  end

  test "should update character_race_weapon" do
    patch :update, id: @character_race_weapon, character_race_weapon: { character_race_id: @character_race_weapon.character_race_id, weapon_type_id: @character_race_weapon.weapon_type_id }
    assert_redirected_to character_race_weapon_path(assigns(:character_race_weapon))
  end

  test "should destroy character_race_weapon" do
    assert_difference('CharacterRaceWeapon.count', -1) do
      delete :destroy, id: @character_race_weapon
    end

    assert_redirected_to character_race_weapons_path
  end
end

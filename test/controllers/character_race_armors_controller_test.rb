require 'test_helper'

class CharacterRaceArmorsControllerTest < ActionController::TestCase
  setup do
    @character_race_armor = character_race_armors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_race_armors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_race_armor" do
    assert_difference('CharacterRaceArmor.count') do
      post :create, character_race_armor: { armor_type_id: @character_race_armor.armor_type_id, character_race_id: @character_race_armor.character_race_id }
    end

    assert_redirected_to character_race_armor_path(assigns(:character_race_armor))
  end

  test "should show character_race_armor" do
    get :show, id: @character_race_armor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_race_armor
    assert_response :success
  end

  test "should update character_race_armor" do
    patch :update, id: @character_race_armor, character_race_armor: { armor_type_id: @character_race_armor.armor_type_id, character_race_id: @character_race_armor.character_race_id }
    assert_redirected_to character_race_armor_path(assigns(:character_race_armor))
  end

  test "should destroy character_race_armor" do
    assert_difference('CharacterRaceArmor.count', -1) do
      delete :destroy, id: @character_race_armor
    end

    assert_redirected_to character_race_armors_path
  end
end

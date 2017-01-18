require 'test_helper'

class CharacterRacesControllerTest < ActionController::TestCase
  setup do
    @character_race = character_races(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_races)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_race" do
    assert_difference('CharacterRace.count') do
      post :create, character_race: { alignment_id: @character_race.alignment_id, armor_class_mod: @character_race.armor_class_mod, char_mod: @character_race.char_mod, cons_mod: @character_race.cons_mod, dex_mod: @character_race.dex_mod, dice_id: @character_race.dice_id, int_mod: @character_race.int_mod, maturity: @character_race.maturity, max_age: @character_race.max_age, max_height: @character_race.max_height, max_weight: @character_race.max_weight, min_height: @character_race.min_height, min_weight: @character_race.min_weight, movement_base: @character_race.movement_base, name: @character_race.name, str_mod: @character_race.str_mod, user_id: @character_race.user_id, wis_mod: @character_race.wis_mod }
    end

    assert_redirected_to character_race_path(assigns(:character_race))
  end

  test "should show character_race" do
    get :show, id: @character_race
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_race
    assert_response :success
  end

  test "should update character_race" do
    patch :update, id: @character_race, character_race: { alignment_id: @character_race.alignment_id, armor_class_mod: @character_race.armor_class_mod, char_mod: @character_race.char_mod, cons_mod: @character_race.cons_mod, dex_mod: @character_race.dex_mod, dice_id: @character_race.dice_id, int_mod: @character_race.int_mod, maturity: @character_race.maturity, max_age: @character_race.max_age, max_height: @character_race.max_height, max_weight: @character_race.max_weight, min_height: @character_race.min_height, min_weight: @character_race.min_weight, movement_base: @character_race.movement_base, name: @character_race.name, str_mod: @character_race.str_mod, user_id: @character_race.user_id, wis_mod: @character_race.wis_mod }
    assert_redirected_to character_race_path(assigns(:character_race))
  end

  test "should destroy character_race" do
    assert_difference('CharacterRace.count', -1) do
      delete :destroy, id: @character_race
    end

    assert_redirected_to character_races_path
  end
end

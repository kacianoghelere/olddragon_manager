require 'test_helper'

class CharacterRaceThiefTalentsControllerTest < ActionController::TestCase
  setup do
    @character_race_thief_talent = character_race_thief_talents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_race_thief_talents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_race_thief_talent" do
    assert_difference('CharacterRaceThiefTalent.count') do
      post :create, character_race_thief_talent: { backstab_mod: @character_race_thief_talent.backstab_mod, character_race_id: @character_race_thief_talent.character_race_id, climb_mod: @character_race_thief_talent.climb_mod, find_traps_mod: @character_race_thief_talent.find_traps_mod, hear_noises_mod: @character_race_thief_talent.hear_noises_mod, id: @character_race_thief_talent.id, lockpick_mod: @character_race_thief_talent.lockpick_mod, pickpocket_mod: @character_race_thief_talent.pickpocket_mod, silent_movement_mod: @character_race_thief_talent.silent_movement_mod, stealth_mod: @character_race_thief_talent.stealth_mod }
    end

    assert_redirected_to character_race_thief_talent_path(assigns(:character_race_thief_talent))
  end

  test "should show character_race_thief_talent" do
    get :show, id: @character_race_thief_talent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_race_thief_talent
    assert_response :success
  end

  test "should update character_race_thief_talent" do
    patch :update, id: @character_race_thief_talent, character_race_thief_talent: { backstab_mod: @character_race_thief_talent.backstab_mod, character_race_id: @character_race_thief_talent.character_race_id, climb_mod: @character_race_thief_talent.climb_mod, find_traps_mod: @character_race_thief_talent.find_traps_mod, hear_noises_mod: @character_race_thief_talent.hear_noises_mod, id: @character_race_thief_talent.id, lockpick_mod: @character_race_thief_talent.lockpick_mod, pickpocket_mod: @character_race_thief_talent.pickpocket_mod, silent_movement_mod: @character_race_thief_talent.silent_movement_mod, stealth_mod: @character_race_thief_talent.stealth_mod }
    assert_redirected_to character_race_thief_talent_path(assigns(:character_race_thief_talent))
  end

  test "should destroy character_race_thief_talent" do
    assert_difference('CharacterRaceThiefTalent.count', -1) do
      delete :destroy, id: @character_race_thief_talent
    end

    assert_redirected_to character_race_thief_talents_path
  end
end

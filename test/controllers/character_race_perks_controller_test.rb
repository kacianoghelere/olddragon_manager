require 'test_helper'

class CharacterRacePerksControllerTest < ActionController::TestCase
  setup do
    @character_race_perk = character_race_perks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_race_perks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_race_perk" do
    assert_difference('CharacterRacePerk.count') do
      post :create, character_race_perk: { character_race_id: @character_race_perk.character_race_id, perk_id: @character_race_perk.perk_id }
    end

    assert_redirected_to character_race_perk_path(assigns(:character_race_perk))
  end

  test "should show character_race_perk" do
    get :show, id: @character_race_perk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_race_perk
    assert_response :success
  end

  test "should update character_race_perk" do
    patch :update, id: @character_race_perk, character_race_perk: { character_race_id: @character_race_perk.character_race_id, perk_id: @character_race_perk.perk_id }
    assert_redirected_to character_race_perk_path(assigns(:character_race_perk))
  end

  test "should destroy character_race_perk" do
    assert_difference('CharacterRacePerk.count', -1) do
      delete :destroy, id: @character_race_perk
    end

    assert_redirected_to character_race_perks_path
  end
end

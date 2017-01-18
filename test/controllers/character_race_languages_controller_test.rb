require 'test_helper'

class CharacterRaceLanguagesControllerTest < ActionController::TestCase
  setup do
    @character_race_language = character_race_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_race_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_race_language" do
    assert_difference('CharacterRaceLanguage.count') do
      post :create, character_race_language: { character_race_id: @character_race_language.character_race_id, language_type_id: @character_race_language.language_type_id }
    end

    assert_redirected_to character_race_language_path(assigns(:character_race_language))
  end

  test "should show character_race_language" do
    get :show, id: @character_race_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_race_language
    assert_response :success
  end

  test "should update character_race_language" do
    patch :update, id: @character_race_language, character_race_language: { character_race_id: @character_race_language.character_race_id, language_type_id: @character_race_language.language_type_id }
    assert_redirected_to character_race_language_path(assigns(:character_race_language))
  end

  test "should destroy character_race_language" do
    assert_difference('CharacterRaceLanguage.count', -1) do
      delete :destroy, id: @character_race_language
    end

    assert_redirected_to character_race_languages_path
  end
end

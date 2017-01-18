require 'test_helper'

class CharacterClassSpellTypesControllerTest < ActionController::TestCase
  setup do
    @character_class_spell_type = character_class_spell_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_class_spell_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_class_spell_type" do
    assert_difference('CharacterClassSpellType.count') do
      post :create, character_class_spell_type: { character_class_id: @character_class_spell_type.character_class_id, spell_type_id: @character_class_spell_type.spell_type_id }
    end

    assert_redirected_to character_class_spell_type_path(assigns(:character_class_spell_type))
  end

  test "should show character_class_spell_type" do
    get :show, id: @character_class_spell_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_class_spell_type
    assert_response :success
  end

  test "should update character_class_spell_type" do
    patch :update, id: @character_class_spell_type, character_class_spell_type: { character_class_id: @character_class_spell_type.character_class_id, spell_type_id: @character_class_spell_type.spell_type_id }
    assert_redirected_to character_class_spell_type_path(assigns(:character_class_spell_type))
  end

  test "should destroy character_class_spell_type" do
    assert_difference('CharacterClassSpellType.count', -1) do
      delete :destroy, id: @character_class_spell_type
    end

    assert_redirected_to character_class_spell_types_path
  end
end

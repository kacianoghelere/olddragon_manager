require 'test_helper'

class CharacterClassRequirementsControllerTest < ActionController::TestCase
  setup do
    @character_class_requirement = character_class_requirements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_class_requirements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_class_requirement" do
    assert_difference('CharacterClassRequirement.count') do
      post :create, character_class_requirement: { char_mod: @character_class_requirement.char_mod, character_classes_id: @character_class_requirement.character_classes_id, cons_mod: @character_class_requirement.cons_mod, dex_mod: @character_class_requirement.dex_mod, int_mod: @character_class_requirement.int_mod, str_mod: @character_class_requirement.str_mod, wis_mod: @character_class_requirement.wis_mod }
    end

    assert_redirected_to character_class_requirement_path(assigns(:character_class_requirement))
  end

  test "should show character_class_requirement" do
    get :show, id: @character_class_requirement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_class_requirement
    assert_response :success
  end

  test "should update character_class_requirement" do
    patch :update, id: @character_class_requirement, character_class_requirement: { char_mod: @character_class_requirement.char_mod, character_classes_id: @character_class_requirement.character_classes_id, cons_mod: @character_class_requirement.cons_mod, dex_mod: @character_class_requirement.dex_mod, int_mod: @character_class_requirement.int_mod, str_mod: @character_class_requirement.str_mod, wis_mod: @character_class_requirement.wis_mod }
    assert_redirected_to character_class_requirement_path(assigns(:character_class_requirement))
  end

  test "should destroy character_class_requirement" do
    assert_difference('CharacterClassRequirement.count', -1) do
      delete :destroy, id: @character_class_requirement
    end

    assert_redirected_to character_class_requirements_path
  end
end

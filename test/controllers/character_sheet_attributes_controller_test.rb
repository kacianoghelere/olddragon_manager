require 'test_helper'

class CharacterSheetAttributesControllerTest < ActionController::TestCase
  setup do
    @character_sheet_attribute = character_sheet_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_sheet_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_sheet_attribute" do
    assert_difference('CharacterSheetAttribute.count') do
      post :create, character_sheet_attribute: { charisma: @character_sheet_attribute.charisma, constitution: @character_sheet_attribute.constitution, dexterity: @character_sheet_attribute.dexterity, intelligence: @character_sheet_attribute.intelligence, strength: @character_sheet_attribute.strength, wisdom: @character_sheet_attribute.wisdom }
    end

    assert_redirected_to character_sheet_attribute_path(assigns(:character_sheet_attribute))
  end

  test "should show character_sheet_attribute" do
    get :show, id: @character_sheet_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_sheet_attribute
    assert_response :success
  end

  test "should update character_sheet_attribute" do
    patch :update, id: @character_sheet_attribute, character_sheet_attribute: { charisma: @character_sheet_attribute.charisma, constitution: @character_sheet_attribute.constitution, dexterity: @character_sheet_attribute.dexterity, intelligence: @character_sheet_attribute.intelligence, strength: @character_sheet_attribute.strength, wisdom: @character_sheet_attribute.wisdom }
    assert_redirected_to character_sheet_attribute_path(assigns(:character_sheet_attribute))
  end

  test "should destroy character_sheet_attribute" do
    assert_difference('CharacterSheetAttribute.count', -1) do
      delete :destroy, id: @character_sheet_attribute
    end

    assert_redirected_to character_sheet_attributes_path
  end
end

require 'test_helper'

class CharacterClassMagicCirclesControllerTest < ActionController::TestCase
  setup do
    @character_class_magic_circle = character_class_magic_circles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_class_magic_circles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_class_magic_circle" do
    assert_difference('CharacterClassMagicCircle.count') do
      post :create, character_class_magic_circle: { character_class_id: @character_class_magic_circle.character_class_id, level: @character_class_magic_circle.level, magic_circle_1: @character_class_magic_circle.magic_circle_1, magic_circle_2: @character_class_magic_circle.magic_circle_2, magic_circle_3: @character_class_magic_circle.magic_circle_3, magic_circle_4: @character_class_magic_circle.magic_circle_4, magic_circle_5: @character_class_magic_circle.magic_circle_5, magic_circle_6: @character_class_magic_circle.magic_circle_6, magic_circle_7: @character_class_magic_circle.magic_circle_7, magic_circle_8: @character_class_magic_circle.magic_circle_8, magic_circle_9: @character_class_magic_circle.magic_circle_9 }
    end

    assert_redirected_to character_class_magic_circle_path(assigns(:character_class_magic_circle))
  end

  test "should show character_class_magic_circle" do
    get :show, id: @character_class_magic_circle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_class_magic_circle
    assert_response :success
  end

  test "should update character_class_magic_circle" do
    patch :update, id: @character_class_magic_circle, character_class_magic_circle: { character_class_id: @character_class_magic_circle.character_class_id, level: @character_class_magic_circle.level, magic_circle_1: @character_class_magic_circle.magic_circle_1, magic_circle_2: @character_class_magic_circle.magic_circle_2, magic_circle_3: @character_class_magic_circle.magic_circle_3, magic_circle_4: @character_class_magic_circle.magic_circle_4, magic_circle_5: @character_class_magic_circle.magic_circle_5, magic_circle_6: @character_class_magic_circle.magic_circle_6, magic_circle_7: @character_class_magic_circle.magic_circle_7, magic_circle_8: @character_class_magic_circle.magic_circle_8, magic_circle_9: @character_class_magic_circle.magic_circle_9 }
    assert_redirected_to character_class_magic_circle_path(assigns(:character_class_magic_circle))
  end

  test "should destroy character_class_magic_circle" do
    assert_difference('CharacterClassMagicCircle.count', -1) do
      delete :destroy, id: @character_class_magic_circle
    end

    assert_redirected_to character_class_magic_circles_path
  end
end

require 'test_helper'

class SkillTypesControllerTest < ActionController::TestCase
  setup do
    @skill_type = skill_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill_type" do
    assert_difference('SkillType.count') do
      post :create, skill_type: { name: @skill_type.name }
    end

    assert_redirected_to skill_type_path(assigns(:skill_type))
  end

  test "should show skill_type" do
    get :show, id: @skill_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skill_type
    assert_response :success
  end

  test "should update skill_type" do
    patch :update, id: @skill_type, skill_type: { name: @skill_type.name }
    assert_redirected_to skill_type_path(assigns(:skill_type))
  end

  test "should destroy skill_type" do
    assert_difference('SkillType.count', -1) do
      delete :destroy, id: @skill_type
    end

    assert_redirected_to skill_types_path
  end
end

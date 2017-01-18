require 'test_helper'

class SpellCirclesControllerTest < ActionController::TestCase
  setup do
    @spell_circle = spell_circles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spell_circles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spell_circle" do
    assert_difference('SpellCircle.count') do
      post :create, spell_circle: { circle: @spell_circle.circle, spell_type_id: @spell_circle.spell_type_id }
    end

    assert_redirected_to spell_circle_path(assigns(:spell_circle))
  end

  test "should show spell_circle" do
    get :show, id: @spell_circle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spell_circle
    assert_response :success
  end

  test "should update spell_circle" do
    patch :update, id: @spell_circle, spell_circle: { circle: @spell_circle.circle, spell_type_id: @spell_circle.spell_type_id }
    assert_redirected_to spell_circle_path(assigns(:spell_circle))
  end

  test "should destroy spell_circle" do
    assert_difference('SpellCircle.count', -1) do
      delete :destroy, id: @spell_circle
    end

    assert_redirected_to spell_circles_path
  end
end

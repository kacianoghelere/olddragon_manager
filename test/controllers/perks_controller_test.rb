require 'test_helper'

class PerksControllerTest < ActionController::TestCase
  setup do
    @perk = perks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perk" do
    assert_difference('Perk.count') do
      post :create, perk: { description: @perk.description, name: @perk.name, perk_type_id: @perk.perk_type_id, user_id: @perk.user_id }
    end

    assert_redirected_to perk_path(assigns(:perk))
  end

  test "should show perk" do
    get :show, id: @perk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perk
    assert_response :success
  end

  test "should update perk" do
    patch :update, id: @perk, perk: { description: @perk.description, name: @perk.name, perk_type_id: @perk.perk_type_id, user_id: @perk.user_id }
    assert_redirected_to perk_path(assigns(:perk))
  end

  test "should destroy perk" do
    assert_difference('Perk.count', -1) do
      delete :destroy, id: @perk
    end

    assert_redirected_to perks_path
  end
end

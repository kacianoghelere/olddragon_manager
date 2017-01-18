require 'test_helper'

class RoleAccessesControllerTest < ActionController::TestCase
  setup do
    @role_access = role_accesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:role_accesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create role_access" do
    assert_difference('RoleAccess.count') do
      post :create, role_access: { id_menu_item: @role_access.id_menu_item, role_id: @role_access.role_id }
    end

    assert_redirected_to role_access_path(assigns(:role_access))
  end

  test "should show role_access" do
    get :show, id: @role_access
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @role_access
    assert_response :success
  end

  test "should update role_access" do
    patch :update, id: @role_access, role_access: { id_menu_item: @role_access.id_menu_item, role_id: @role_access.role_id }
    assert_redirected_to role_access_path(assigns(:role_access))
  end

  test "should destroy role_access" do
    assert_difference('RoleAccess.count', -1) do
      delete :destroy, id: @role_access
    end

    assert_redirected_to role_accesses_path
  end
end

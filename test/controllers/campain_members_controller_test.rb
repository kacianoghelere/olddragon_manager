require 'test_helper'

class CampainMembersControllerTest < ActionController::TestCase
  setup do
    @campain_member = campain_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campain_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campain_member" do
    assert_difference('CampainMember.count') do
      post :create, campain_member: { campain_id: @campain_member.campain_id, character_sheet_id: @campain_member.character_sheet_id, idactive: @campain_member.idactive }
    end

    assert_redirected_to campain_member_path(assigns(:campain_member))
  end

  test "should show campain_member" do
    get :show, id: @campain_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campain_member
    assert_response :success
  end

  test "should update campain_member" do
    patch :update, id: @campain_member, campain_member: { campain_id: @campain_member.campain_id, character_sheet_id: @campain_member.character_sheet_id, idactive: @campain_member.idactive }
    assert_redirected_to campain_member_path(assigns(:campain_member))
  end

  test "should destroy campain_member" do
    assert_difference('CampainMember.count', -1) do
      delete :destroy, id: @campain_member
    end

    assert_redirected_to campain_members_path
  end
end

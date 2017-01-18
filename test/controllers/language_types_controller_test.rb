require 'test_helper'

class LanguageTypesControllerTest < ActionController::TestCase
  setup do
    @language_type = language_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:language_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create language_type" do
    assert_difference('LanguageType.count') do
      post :create, language_type: { description: @language_type.description, name: @language_type.name }
    end

    assert_redirected_to language_type_path(assigns(:language_type))
  end

  test "should show language_type" do
    get :show, id: @language_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @language_type
    assert_response :success
  end

  test "should update language_type" do
    patch :update, id: @language_type, language_type: { description: @language_type.description, name: @language_type.name }
    assert_redirected_to language_type_path(assigns(:language_type))
  end

  test "should destroy language_type" do
    assert_difference('LanguageType.count', -1) do
      delete :destroy, id: @language_type
    end

    assert_redirected_to language_types_path
  end
end

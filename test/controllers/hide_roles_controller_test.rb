require 'test_helper'

class HideRolesControllerTest < ActionController::TestCase
  setup do
    @hide_role = hide_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hide_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hide_role" do
    assert_difference('HideRole.count') do
      post :create, hide_role: {  }
    end

    assert_redirected_to hide_role_path(assigns(:hide_role))
  end

  test "should show hide_role" do
    get :show, id: @hide_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hide_role
    assert_response :success
  end

  test "should update hide_role" do
    patch :update, id: @hide_role, hide_role: {  }
    assert_redirected_to hide_role_path(assigns(:hide_role))
  end

  test "should destroy hide_role" do
    assert_difference('HideRole.count', -1) do
      delete :destroy, id: @hide_role
    end

    assert_redirected_to hide_roles_path
  end
end

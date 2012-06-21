require 'test_helper'

class DasboardsControllerTest < ActionController::TestCase
  setup do
    @dasboard = dasboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dasboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dasboard" do
    assert_difference('Dasboard.count') do
      post :create, dasboard: {  }
    end

    assert_redirected_to dasboard_path(assigns(:dasboard))
  end

  test "should show dasboard" do
    get :show, id: @dasboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dasboard
    assert_response :success
  end

  test "should update dasboard" do
    put :update, id: @dasboard, dasboard: {  }
    assert_redirected_to dasboard_path(assigns(:dasboard))
  end

  test "should destroy dasboard" do
    assert_difference('Dasboard.count', -1) do
      delete :destroy, id: @dasboard
    end

    assert_redirected_to dasboards_path
  end
end

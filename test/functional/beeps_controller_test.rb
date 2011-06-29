require 'test_helper'

class BeepsControllerTest < ActionController::TestCase
  setup do
    @beep = beeps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beeps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beep" do
    assert_difference('Beep.count') do
      post :create, :beep => @beep.attributes
    end

    assert_redirected_to beep_path(assigns(:beep))
  end

  test "should show beep" do
    get :show, :id => @beep.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @beep.to_param
    assert_response :success
  end

  test "should update beep" do
    put :update, :id => @beep.to_param, :beep => @beep.attributes
    assert_redirected_to beep_path(assigns(:beep))
  end

  test "should destroy beep" do
    assert_difference('Beep.count', -1) do
      delete :destroy, :id => @beep.to_param
    end

    assert_redirected_to beeps_path
  end
end

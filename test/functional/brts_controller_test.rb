require 'test_helper'

class BrtsControllerTest < ActionController::TestCase
  setup do
    @brt = brts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brt" do
    assert_difference('Brt.count') do
      post :create, brt: { address: @brt.address, name: @brt.name }
    end

    assert_redirected_to brt_path(assigns(:brt))
  end

  test "should show brt" do
    get :show, id: @brt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brt
    assert_response :success
  end

  test "should update brt" do
    put :update, id: @brt, brt: { address: @brt.address, name: @brt.name }
    assert_redirected_to brt_path(assigns(:brt))
  end

  test "should destroy brt" do
    assert_difference('Brt.count', -1) do
      delete :destroy, id: @brt
    end

    assert_redirected_to brts_path
  end
end

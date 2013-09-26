require 'test_helper'

class UipCentersControllerTest < ActionController::TestCase
  setup do
    @uip_center = uip_centers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uip_centers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uip_center" do
    assert_difference('UipCenter.count') do
      post :create, uip_center: { address: @uip_center.address, chief: @uip_center.chief, code: @uip_center.code, name: @uip_center.name, phone: @uip_center.phone }
    end

    assert_redirected_to uip_center_path(assigns(:uip_center))
  end

  test "should show uip_center" do
    get :show, id: @uip_center
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uip_center
    assert_response :success
  end

  test "should update uip_center" do
    patch :update, id: @uip_center, uip_center: { address: @uip_center.address, chief: @uip_center.chief, code: @uip_center.code, name: @uip_center.name, phone: @uip_center.phone }
    assert_redirected_to uip_center_path(assigns(:uip_center))
  end

  test "should destroy uip_center" do
    assert_difference('UipCenter.count', -1) do
      delete :destroy, id: @uip_center
    end

    assert_redirected_to uip_centers_path
  end
end

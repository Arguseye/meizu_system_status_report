require 'test_helper'

class MachineBusinessesControllerTest < ActionController::TestCase
  setup do
    @machine_business = machine_businesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:machine_businesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create machine_business" do
    assert_difference('MachineBusiness.count') do
      post :create, machine_business: { business: @machine_business.business, domain: @machine_business.domain, ip: @machine_business.ip, type: @machine_business.type }
    end

    assert_redirected_to machine_business_path(assigns(:machine_business))
  end

  test "should show machine_business" do
    get :show, id: @machine_business
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @machine_business
    assert_response :success
  end

  test "should update machine_business" do
    patch :update, id: @machine_business, machine_business: { business: @machine_business.business, domain: @machine_business.domain, ip: @machine_business.ip, type: @machine_business.type }
    assert_redirected_to machine_business_path(assigns(:machine_business))
  end

  test "should destroy machine_business" do
    assert_difference('MachineBusiness.count', -1) do
      delete :destroy, id: @machine_business
    end

    assert_redirected_to machine_businesses_path
  end
end

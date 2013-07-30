require 'test_helper'

class MachineErrorsControllerTest < ActionController::TestCase
  setup do
    @machine_error = machine_errors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:machine_errors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create machine_error" do
    assert_difference('MachineError.count') do
      post :create, machine_error: { error: @machine_error.error, error_type: @machine_error.error_type, machine_business_id: @machine_error.machine_business_id, on_date: @machine_error.on_date, pv: @machine_error.pv }
    end

    assert_redirected_to machine_error_path(assigns(:machine_error))
  end

  test "should show machine_error" do
    get :show, id: @machine_error
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @machine_error
    assert_response :success
  end

  test "should update machine_error" do
    patch :update, id: @machine_error, machine_error: { error: @machine_error.error, error_type: @machine_error.error_type, machine_business_id: @machine_error.machine_business_id, on_date: @machine_error.on_date, pv: @machine_error.pv }
    assert_redirected_to machine_error_path(assigns(:machine_error))
  end

  test "should destroy machine_error" do
    assert_difference('MachineError.count', -1) do
      delete :destroy, id: @machine_error
    end

    assert_redirected_to machine_errors_path
  end
end

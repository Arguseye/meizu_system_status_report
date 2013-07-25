require 'test_helper'

class MachineStatusesControllerTest < ActionController::TestCase
  setup do
    @machine_status = machine_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:machine_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create machine_status" do
    assert_difference('MachineStatus.count') do
      post :create, machine_status: { cpu_usage: @machine_status.cpu_usage, disk_io_rate: @machine_status.disk_io_rate, ip: @machine_status.ip, load: @machine_status.load, tcp_connection: @machine_status.tcp_connection }
    end

    assert_redirected_to machine_status_path(assigns(:machine_status))
  end

  test "should show machine_status" do
    get :show, id: @machine_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @machine_status
    assert_response :success
  end

  test "should update machine_status" do
    patch :update, id: @machine_status, machine_status: { cpu_usage: @machine_status.cpu_usage, disk_io_rate: @machine_status.disk_io_rate, ip: @machine_status.ip, load: @machine_status.load, tcp_connection: @machine_status.tcp_connection }
    assert_redirected_to machine_status_path(assigns(:machine_status))
  end

  test "should destroy machine_status" do
    assert_difference('MachineStatus.count', -1) do
      delete :destroy, id: @machine_status
    end

    assert_redirected_to machine_statuses_path
  end
end

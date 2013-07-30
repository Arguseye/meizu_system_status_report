require 'test_helper'

class ClientErrorsControllerTest < ActionController::TestCase
  setup do
    @client_error = client_errors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_errors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_error" do
    assert_difference('ClientError.count') do
      post :create, client_error: { business: @client_error.business, detail: @client_error.detail, errors: @client_error.errors, time: @client_error.time }
    end

    assert_redirected_to client_error_path(assigns(:client_error))
  end

  test "should show client_error" do
    get :show, id: @client_error
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_error
    assert_response :success
  end

  test "should update client_error" do
    patch :update, id: @client_error, client_error: { business: @client_error.business, detail: @client_error.detail, errors: @client_error.errors, time: @client_error.time }
    assert_redirected_to client_error_path(assigns(:client_error))
  end

  test "should destroy client_error" do
    assert_difference('ClientError.count', -1) do
      delete :destroy, id: @client_error
    end

    assert_redirected_to client_errors_path
  end
end

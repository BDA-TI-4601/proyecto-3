require 'test_helper'

class Login::ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @login_client = login_clients(:one)
  end

  test "should get index" do
    get login_clients_url, as: :json
    assert_response :success
  end

  test "should create login_client" do
    assert_difference('Login::Client.count') do
      post login_clients_url, params: { login_client: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show login_client" do
    get login_client_url(@login_client), as: :json
    assert_response :success
  end

  test "should update login_client" do
    patch login_client_url(@login_client), params: { login_client: {  } }, as: :json
    assert_response 200
  end

  test "should destroy login_client" do
    assert_difference('Login::Client.count', -1) do
      delete login_client_url(@login_client), as: :json
    end

    assert_response 204
  end
end

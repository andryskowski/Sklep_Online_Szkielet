require 'test_helper'

class SocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sock = socks(:one)
  end

  test "should get index" do
    get socks_url
    assert_response :success
  end

  test "should get new" do
    get new_sock_url
    assert_response :success
  end

  test "should create sock" do
    assert_difference('Sock.count') do
      post socks_url, params: { sock: { description: @sock.description, model: @sock.model, price: @sock.price, title: @sock.title } }
    end

    assert_redirected_to sock_url(Sock.last)
  end

  test "should show sock" do
    get sock_url(@sock)
    assert_response :success
  end

  test "should get edit" do
    get edit_sock_url(@sock)
    assert_response :success
  end

  test "should update sock" do
    patch sock_url(@sock), params: { sock: { description: @sock.description, model: @sock.model, price: @sock.price, title: @sock.title } }
    assert_redirected_to sock_url(@sock)
  end

  test "should destroy sock" do
    assert_difference('Sock.count', -1) do
      delete sock_url(@sock)
    end

    assert_redirected_to socks_url
  end
end

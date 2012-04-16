require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    test = customers(:one)
    post :create, email: 'fakename@gmail.com', password: 'secret'
    assert_redirected_to login_url
  end

  test "should logout" do
    delete :destroy
    #assert_redirected_to store_url #remove
  end

=begin

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end
=end
end

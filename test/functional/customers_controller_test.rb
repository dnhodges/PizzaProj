require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @input_attributes = {
      email:      'test@test.org',
      first_name: 'test',
      last_name:  'smith',
      password_digest:   'private',
     # password_confirmation: 'private',
      phone:      '3015783932',
      address:    '123 Fake Street Chantilly, VA 20879'
    }
    @customer = customers(:one)

  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: @input_attributes #@customer.attributes
    end

    assert_redirected_to customers_path#(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    put :update, id: @customer.to_param, customer: @input_attributes
    assert_redirected_to customers_path#(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end

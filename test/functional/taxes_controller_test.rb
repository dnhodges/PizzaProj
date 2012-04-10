require 'test_helper'

class TaxesControllerTest < ActionController::TestCase
  setup do
    @input_attributes = {
      tax_name:   'F',
      state:      'MD',
      amount:     0.05
    }
    @tax = taxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tax" do
    assert_difference('Tax.count') do
      post :create, tax: @input_attributes #@tax.attributes
    end

    assert_redirected_to tax_path(assigns(:tax))
  end

  test "should show tax" do
    get :show, id: @tax
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tax
    assert_response :success
  end

  test "should update tax" do
    put :update, id: @tax.to_param, tax: @input_attributes#@tax.attributes
    assert_redirected_to tax_path(assigns(:tax))
  end

  test "should destroy tax" do
    assert_difference('Tax.count', -1) do
      delete :destroy, id: @tax
    end

    assert_redirected_to taxes_path
  end
end

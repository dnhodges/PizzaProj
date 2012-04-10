require 'test_helper'

class IncludesDrinksControllerTest < ActionController::TestCase
  setup do
    @input_attributes = {
      drink_name:     'Fanta',
      manufacturer:   'Coca-Cola',
      description:    'This soda',
      price:          3.39
    }
    @includes_drink = includes_drinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:includes_drinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create includes_drink" do
    assert_difference('IncludesDrink.count') do
      post :create, includes_drink: @input_attributes #@includes_drink.attributes
    end

    assert_redirected_to includes_drink_path(assigns(:includes_drink))
  end

  test "should show includes_drink" do
    get :show, id: @includes_drink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @includes_drink
    assert_response :success
  end

  test "should update includes_drink" do
    put :update, id: @includes_drink.to_param, includes_drink: @input_attributes
    assert_redirected_to includes_drink_path(assigns(:includes_drink))
  end

  test "should destroy includes_drink" do
    assert_difference('IncludesDrink.count', -1) do
      delete :destroy, id: @includes_drink
    end

    assert_redirected_to includes_drinks_path
  end
end

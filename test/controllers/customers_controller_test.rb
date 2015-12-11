require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, params: { customer: {  } }
    end

    assert_response 201
  end

  test "should show customer" do
    get :show, params: { id: @customer }
    assert_response :success
  end

  test "should update customer" do
    patch :update, params: { id: @customer, customer: {  } }
    assert_response 200
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, params: { id: @customer }
    end

    assert_response 204
  end
end

require 'test_helper'

class QuotationsControllerTest < ActionController::TestCase
  setup do
    @quotation = quotations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create quotation" do
    assert_difference('Quotation.count') do
      post :create, params: { quotation: {  } }
    end

    assert_response 201
  end

  test "should show quotation" do
    get :show, params: { id: @quotation }
    assert_response :success
  end

  test "should update quotation" do
    patch :update, params: { id: @quotation, quotation: {  } }
    assert_response 200
  end

  test "should destroy quotation" do
    assert_difference('Quotation.count', -1) do
      delete :destroy, params: { id: @quotation }
    end

    assert_response 204
  end
end

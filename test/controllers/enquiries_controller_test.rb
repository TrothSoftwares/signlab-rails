require 'test_helper'

class EnquiriesControllerTest < ActionController::TestCase
  setup do
    @enquiry = enquiries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create enquiry" do
    assert_difference('Enquiry.count') do
      post :create, params: { enquiry: {  } }
    end

    assert_response 201
  end

  test "should show enquiry" do
    get :show, params: { id: @enquiry }
    assert_response :success
  end

  test "should update enquiry" do
    patch :update, params: { id: @enquiry, enquiry: {  } }
    assert_response 200
  end

  test "should destroy enquiry" do
    assert_difference('Enquiry.count', -1) do
      delete :destroy, params: { id: @enquiry }
    end

    assert_response 204
  end
end

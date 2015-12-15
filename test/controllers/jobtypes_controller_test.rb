require 'test_helper'

class JobtypesControllerTest < ActionController::TestCase
  setup do
    @jobtype = jobtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create jobtype" do
    assert_difference('Jobtype.count') do
      post :create, params: { jobtype: {  } }
    end

    assert_response 201
  end

  test "should show jobtype" do
    get :show, params: { id: @jobtype }
    assert_response :success
  end

  test "should update jobtype" do
    patch :update, params: { id: @jobtype, jobtype: {  } }
    assert_response 200
  end

  test "should destroy jobtype" do
    assert_difference('Jobtype.count', -1) do
      delete :destroy, params: { id: @jobtype }
    end

    assert_response 204
  end
end

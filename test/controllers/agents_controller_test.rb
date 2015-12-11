require 'test_helper'

class AgentsControllerTest < ActionController::TestCase
  setup do
    @agent = agents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create agent" do
    assert_difference('Agent.count') do
      post :create, params: { agent: {  } }
    end

    assert_response 201
  end

  test "should show agent" do
    get :show, params: { id: @agent }
    assert_response :success
  end

  test "should update agent" do
    patch :update, params: { id: @agent, agent: {  } }
    assert_response 200
  end

  test "should destroy agent" do
    assert_difference('Agent.count', -1) do
      delete :destroy, params: { id: @agent }
    end

    assert_response 204
  end
end

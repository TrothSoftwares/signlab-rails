require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, params: { project: {  } }
    end

    assert_response 201
  end

  test "should show project" do
    get :show, params: { id: @project }
    assert_response :success
  end

  test "should update project" do
    patch :update, params: { id: @project, project: {  } }
    assert_response 200
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, params: { id: @project }
    end

    assert_response 204
  end
end

require 'test_helper'

class DesignimagesControllerTest < ActionController::TestCase
  setup do
    @designimage = designimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create designimage" do
    assert_difference('Designimage.count') do
      post :create, params: { designimage: {  } }
    end

    assert_response 201
  end

  test "should show designimage" do
    get :show, params: { id: @designimage }
    assert_response :success
  end

  test "should update designimage" do
    patch :update, params: { id: @designimage, designimage: {  } }
    assert_response 200
  end

  test "should destroy designimage" do
    assert_difference('Designimage.count', -1) do
      delete :destroy, params: { id: @designimage }
    end

    assert_response 204
  end
end

require 'test_helper'

class SiteimagesControllerTest < ActionController::TestCase
  setup do
    @siteimage = siteimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create siteimage" do
    assert_difference('Siteimage.count') do
      post :create, params: { siteimage: {  } }
    end

    assert_response 201
  end

  test "should show siteimage" do
    get :show, params: { id: @siteimage }
    assert_response :success
  end

  test "should update siteimage" do
    patch :update, params: { id: @siteimage, siteimage: {  } }
    assert_response 200
  end

  test "should destroy siteimage" do
    assert_difference('Siteimage.count', -1) do
      delete :destroy, params: { id: @siteimage }
    end

    assert_response 204
  end
end

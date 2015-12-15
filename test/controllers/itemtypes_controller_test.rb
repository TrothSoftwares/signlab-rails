require 'test_helper'

class ItemtypesControllerTest < ActionController::TestCase
  setup do
    @itemtype = itemtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create itemtype" do
    assert_difference('Itemtype.count') do
      post :create, params: { itemtype: {  } }
    end

    assert_response 201
  end

  test "should show itemtype" do
    get :show, params: { id: @itemtype }
    assert_response :success
  end

  test "should update itemtype" do
    patch :update, params: { id: @itemtype, itemtype: {  } }
    assert_response 200
  end

  test "should destroy itemtype" do
    assert_difference('Itemtype.count', -1) do
      delete :destroy, params: { id: @itemtype }
    end

    assert_response 204
  end
end

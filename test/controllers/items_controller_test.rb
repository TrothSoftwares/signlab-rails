require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, params: { item: {  } }
    end

    assert_response 201
  end

  test "should show item" do
    get :show, params: { id: @item }
    assert_response :success
  end

  test "should update item" do
    patch :update, params: { id: @item, item: {  } }
    assert_response 200
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, params: { id: @item }
    end

    assert_response 204
  end
end

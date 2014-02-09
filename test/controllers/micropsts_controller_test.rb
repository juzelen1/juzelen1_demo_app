require 'test_helper'

class MicropstsControllerTest < ActionController::TestCase
  setup do
    @micropst = micropsts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropsts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropst" do
    assert_difference('Micropst.count') do
      post :create, micropst: { content: @micropst.content, user_id: @micropst.user_id }
    end

    assert_redirected_to micropst_path(assigns(:micropst))
  end

  test "should show micropst" do
    get :show, id: @micropst
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropst
    assert_response :success
  end

  test "should update micropst" do
    patch :update, id: @micropst, micropst: { content: @micropst.content, user_id: @micropst.user_id }
    assert_redirected_to micropst_path(assigns(:micropst))
  end

  test "should destroy micropst" do
    assert_difference('Micropst.count', -1) do
      delete :destroy, id: @micropst
    end

    assert_redirected_to micropsts_path
  end
end

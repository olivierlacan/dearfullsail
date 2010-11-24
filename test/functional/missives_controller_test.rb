require 'test_helper'

class MissivesControllerTest < ActionController::TestCase
  setup do
    @missife = missives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:missives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create missife" do
    assert_difference('Missive.count') do
      post :create, :missife => @missife.attributes
    end

    assert_redirected_to missife_path(assigns(:missife))
  end

  test "should show missife" do
    get :show, :id => @missife.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @missife.to_param
    assert_response :success
  end

  test "should update missife" do
    put :update, :id => @missife.to_param, :missife => @missife.attributes
    assert_redirected_to missife_path(assigns(:missife))
  end

  test "should destroy missife" do
    assert_difference('Missive.count', -1) do
      delete :destroy, :id => @missife.to_param
    end

    assert_redirected_to missives_path
  end
end

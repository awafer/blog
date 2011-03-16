require 'test_helper'

class DocviewsControllerTest < ActionController::TestCase
  setup do
    @docview = docviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:docviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create docview" do
    assert_difference('Docview.count') do
      post :create, :docview => @docview.attributes
    end

    assert_redirected_to docview_path(assigns(:docview))
  end

  test "should show docview" do
    get :show, :id => @docview.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @docview.to_param
    assert_response :success
  end

  test "should update docview" do
    put :update, :id => @docview.to_param, :docview => @docview.attributes
    assert_redirected_to docview_path(assigns(:docview))
  end

  test "should destroy docview" do
    assert_difference('Docview.count', -1) do
      delete :destroy, :id => @docview.to_param
    end

    assert_redirected_to docviews_path
  end
end

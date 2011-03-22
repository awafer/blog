require 'test_helper'

class DocumentsControllerTest < ActionController::TestCase
  setup do
    @document = documents(:one)
    @update = {
    	:title => 'lorem Ipsum',
    	:author=> 'someone',
    	:date => 2011-03-16,
    	:body=>'somebody',
    	:category=>'FX',
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create document" do
    assert_difference('Document.count') do
      post :create, :document => @update
    end

    assert_redirected_to document_path(assigns(:document))
  end

  test "should show document" do
    get :show, :id => @document.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @document.to_param
    assert_response :success
  end

  test "should update document" do
    put :update, :id => @document.to_param, :document => @update
    assert_redirected_to document_path(assigns(:document))
  end

  test "should destroy document" do
    assert_difference('Document.count', -1) do
      delete :destroy, :id => @document.to_param
    end

    assert_redirected_to documents_path
  end
end

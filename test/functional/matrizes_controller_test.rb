require 'test_helper'

class MatrizesControllerTest < ActionController::TestCase
  setup do
    @matrize = matrizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrize" do
    assert_difference('Matrize.count') do
      post :create, :matrize => @matrize.attributes
    end

    assert_redirected_to matrize_path(assigns(:matrize))
  end

  test "should show matrize" do
    get :show, :id => @matrize.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @matrize.to_param
    assert_response :success
  end

  test "should update matrize" do
    put :update, :id => @matrize.to_param, :matrize => @matrize.attributes
    assert_redirected_to matrize_path(assigns(:matrize))
  end

  test "should destroy matrize" do
    assert_difference('Matrize.count', -1) do
      delete :destroy, :id => @matrize.to_param
    end

    assert_redirected_to matrizes_path
  end
end

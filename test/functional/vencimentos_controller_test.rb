require 'test_helper'

class VencimentosControllerTest < ActionController::TestCase
  setup do
    @vencimento = vencimentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vencimentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vencimento" do
    assert_difference('Vencimento.count') do
      post :create, :vencimento => @vencimento.attributes
    end

    assert_redirected_to vencimento_path(assigns(:vencimento))
  end

  test "should show vencimento" do
    get :show, :id => @vencimento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vencimento.to_param
    assert_response :success
  end

  test "should update vencimento" do
    put :update, :id => @vencimento.to_param, :vencimento => @vencimento.attributes
    assert_redirected_to vencimento_path(assigns(:vencimento))
  end

  test "should destroy vencimento" do
    assert_difference('Vencimento.count', -1) do
      delete :destroy, :id => @vencimento.to_param
    end

    assert_redirected_to vencimentos_path
  end
end

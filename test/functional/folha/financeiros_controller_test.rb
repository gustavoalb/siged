require 'test_helper'

class Folha::FinanceirosControllerTest < ActionController::TestCase
  setup do
    @folha_financeiro = folha_financeiros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:folha_financeiros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create folha_financeiro" do
    assert_difference('Folha::Financeiro.count') do
      post :create, :folha_financeiro => @folha_financeiro.attributes
    end

    assert_redirected_to folha_financeiro_path(assigns(:folha_financeiro))
  end

  test "should show folha_financeiro" do
    get :show, :id => @folha_financeiro.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @folha_financeiro.to_param
    assert_response :success
  end

  test "should update folha_financeiro" do
    put :update, :id => @folha_financeiro.to_param, :folha_financeiro => @folha_financeiro.attributes
    assert_redirected_to folha_financeiro_path(assigns(:folha_financeiro))
  end

  test "should destroy folha_financeiro" do
    assert_difference('Folha::Financeiro.count', -1) do
      delete :destroy, :id => @folha_financeiro.to_param
    end

    assert_redirected_to folha_financeiros_path
  end
end

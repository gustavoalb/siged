# -*- encoding : utf-8 -*-
require 'test_helper'

class PontoAssinaturasControllerTest < ActionController::TestCase
  setup do
    @ponto_assinatura = ponto_assinaturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ponto_assinaturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ponto_assinatura" do
    assert_difference('PontoAssinatura.count') do
      post :create, :ponto_assinatura => @ponto_assinatura.attributes
    end

    assert_redirected_to ponto_assinatura_path(assigns(:ponto_assinatura))
  end

  test "should show ponto_assinatura" do
    get :show, :id => @ponto_assinatura.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ponto_assinatura.to_param
    assert_response :success
  end

  test "should update ponto_assinatura" do
    put :update, :id => @ponto_assinatura.to_param, :ponto_assinatura => @ponto_assinatura.attributes
    assert_redirected_to ponto_assinatura_path(assigns(:ponto_assinatura))
  end

  test "should destroy ponto_assinatura" do
    assert_difference('PontoAssinatura.count', -1) do
      delete :destroy, :id => @ponto_assinatura.to_param
    end

    assert_redirected_to ponto_assinaturas_path
  end
end


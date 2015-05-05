# -*- encoding : utf-8 -*-
require 'test_helper'

class SituacoesJuridicasControllerTest < ActionController::TestCase
  setup do
    @situacoes_juridica = situacoes_juridicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:situacoes_juridicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create situacoes_juridica" do
    assert_difference('SituacoesJuridica.count') do
      post :create, :situacoes_juridica => @situacoes_juridica.attributes
    end

    assert_redirected_to situacoes_juridica_path(assigns(:situacoes_juridica))
  end

  test "should show situacoes_juridica" do
    get :show, :id => @situacoes_juridica.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @situacoes_juridica.to_param
    assert_response :success
  end

  test "should update situacoes_juridica" do
    put :update, :id => @situacoes_juridica.to_param, :situacoes_juridica => @situacoes_juridica.attributes
    assert_redirected_to situacoes_juridica_path(assigns(:situacoes_juridica))
  end

  test "should destroy situacoes_juridica" do
    assert_difference('SituacoesJuridica.count', -1) do
      delete :destroy, :id => @situacoes_juridica.to_param
    end

    assert_redirected_to situacoes_juridicas_path
  end
end


# -*- encoding : utf-8 -*-
require 'test_helper'

class MensagensControllerTest < ActionController::TestCase
  setup do
    @mensagem = mensagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mensagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mensagem" do
    assert_difference('Mensagem.count') do
      post :create, :mensagem => @mensagem.attributes
    end

    assert_redirected_to mensagem_path(assigns(:mensagem))
  end

  test "should show mensagem" do
    get :show, :id => @mensagem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mensagem.to_param
    assert_response :success
  end

  test "should update mensagem" do
    put :update, :id => @mensagem.to_param, :mensagem => @mensagem.attributes
    assert_redirected_to mensagem_path(assigns(:mensagem))
  end

  test "should destroy mensagem" do
    assert_difference('Mensagem.count', -1) do
      delete :destroy, :id => @mensagem.to_param
    end

    assert_redirected_to mensagens_path
  end
end


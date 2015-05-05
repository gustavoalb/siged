# -*- encoding : utf-8 -*-
require 'test_helper'

class Arquivo::DocumentosControllerTest < ActionController::TestCase
  setup do
    @arquivo_documento = arquivo_documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arquivo_documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arquivo_documento" do
    assert_difference('Arquivo::Documento.count') do
      post :create, :arquivo_documento => @arquivo_documento.attributes
    end

    assert_redirected_to arquivo_documento_path(assigns(:arquivo_documento))
  end

  test "should show arquivo_documento" do
    get :show, :id => @arquivo_documento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @arquivo_documento.to_param
    assert_response :success
  end

  test "should update arquivo_documento" do
    put :update, :id => @arquivo_documento.to_param, :arquivo_documento => @arquivo_documento.attributes
    assert_redirected_to arquivo_documento_path(assigns(:arquivo_documento))
  end

  test "should destroy arquivo_documento" do
    assert_difference('Arquivo::Documento.count', -1) do
      delete :destroy, :id => @arquivo_documento.to_param
    end

    assert_redirected_to arquivo_documentos_path
  end
end


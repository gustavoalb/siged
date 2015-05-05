# -*- encoding : utf-8 -*-
require 'test_helper'

class Folha::FonteRecursosControllerTest < ActionController::TestCase
  setup do
    @folha_fonte_recurso = folha_fonte_recursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:folha_fonte_recursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create folha_fonte_recurso" do
    assert_difference('Folha::FonteRecurso.count') do
      post :create, :folha_fonte_recurso => @folha_fonte_recurso.attributes
    end

    assert_redirected_to folha_fonte_recurso_path(assigns(:folha_fonte_recurso))
  end

  test "should show folha_fonte_recurso" do
    get :show, :id => @folha_fonte_recurso.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @folha_fonte_recurso.to_param
    assert_response :success
  end

  test "should update folha_fonte_recurso" do
    put :update, :id => @folha_fonte_recurso.to_param, :folha_fonte_recurso => @folha_fonte_recurso.attributes
    assert_redirected_to folha_fonte_recurso_path(assigns(:folha_fonte_recurso))
  end

  test "should destroy folha_fonte_recurso" do
    assert_difference('Folha::FonteRecurso.count', -1) do
      delete :destroy, :id => @folha_fonte_recurso.to_param
    end

    assert_redirected_to folha_fonte_recursos_path
  end
end


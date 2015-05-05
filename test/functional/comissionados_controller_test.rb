# -*- encoding : utf-8 -*-
require 'test_helper'

class ComissionadosControllerTest < ActionController::TestCase
  setup do
    @comissionado = comissionados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comissionados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comissionado" do
    assert_difference('Comissionado.count') do
      post :create, :comissionado => @comissionado.attributes
    end

    assert_redirected_to comissionado_path(assigns(:comissionado))
  end

  test "should show comissionado" do
    get :show, :id => @comissionado.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @comissionado.to_param
    assert_response :success
  end

  test "should update comissionado" do
    put :update, :id => @comissionado.to_param, :comissionado => @comissionado.attributes
    assert_redirected_to comissionado_path(assigns(:comissionado))
  end

  test "should destroy comissionado" do
    assert_difference('Comissionado.count', -1) do
      delete :destroy, :id => @comissionado.to_param
    end

    assert_redirected_to comissionados_path
  end
end


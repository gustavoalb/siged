# -*- encoding : utf-8 -*-
require 'test_helper'

class CarenciasControllerTest < ActionController::TestCase
  setup do
    @carencia = carencias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carencias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carencia" do
    assert_difference('Carencia.count') do
      post :create, :carencia => @carencia.attributes
    end

    assert_redirected_to carencia_path(assigns(:carencia))
  end

  test "should show carencia" do
    get :show, :id => @carencia.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @carencia.to_param
    assert_response :success
  end

  test "should update carencia" do
    put :update, :id => @carencia.to_param, :carencia => @carencia.attributes
    assert_redirected_to carencia_path(assigns(:carencia))
  end

  test "should destroy carencia" do
    assert_difference('Carencia.count', -1) do
      delete :destroy, :id => @carencia.to_param
    end

    assert_redirected_to carencias_path
  end
end


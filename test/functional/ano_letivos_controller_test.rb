# -*- encoding : utf-8 -*-
require 'test_helper'

class AnoLetivosControllerTest < ActionController::TestCase
  setup do
    @ano_letivo = ano_letivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ano_letivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ano_letivo" do
    assert_difference('AnoLetivo.count') do
      post :create, :ano_letivo => @ano_letivo.attributes
    end

    assert_redirected_to ano_letivo_path(assigns(:ano_letivo))
  end

  test "should show ano_letivo" do
    get :show, :id => @ano_letivo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ano_letivo.to_param
    assert_response :success
  end

  test "should update ano_letivo" do
    put :update, :id => @ano_letivo.to_param, :ano_letivo => @ano_letivo.attributes
    assert_redirected_to ano_letivo_path(assigns(:ano_letivo))
  end

  test "should destroy ano_letivo" do
    assert_difference('AnoLetivo.count', -1) do
      delete :destroy, :id => @ano_letivo.to_param
    end

    assert_redirected_to ano_letivos_path
  end
end


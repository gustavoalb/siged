# -*- encoding : utf-8 -*-
require 'test_helper'

class TipoListaControllerTest < ActionController::TestCase
  setup do
    @tipo_listum = tipo_lista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_lista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_listum" do
    assert_difference('TipoListum.count') do
      post :create, :tipo_listum => @tipo_listum.attributes
    end

    assert_redirected_to tipo_listum_path(assigns(:tipo_listum))
  end

  test "should show tipo_listum" do
    get :show, :id => @tipo_listum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tipo_listum.to_param
    assert_response :success
  end

  test "should update tipo_listum" do
    put :update, :id => @tipo_listum.to_param, :tipo_listum => @tipo_listum.attributes
    assert_redirected_to tipo_listum_path(assigns(:tipo_listum))
  end

  test "should destroy tipo_listum" do
    assert_difference('TipoListum.count', -1) do
      delete :destroy, :id => @tipo_listum.to_param
    end

    assert_redirected_to tipo_lista_path
  end
end


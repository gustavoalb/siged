# -*- encoding : utf-8 -*-
require 'test_helper'

class AmbientesControllerTest < ActionController::TestCase
  setup do
    @ambiente = ambientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ambientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ambiente" do
    assert_difference('Ambiente.count') do
      post :create, :ambiente => @ambiente.attributes
    end

    assert_redirected_to ambiente_path(assigns(:ambiente))
  end

  test "should show ambiente" do
    get :show, :id => @ambiente.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ambiente.to_param
    assert_response :success
  end

  test "should update ambiente" do
    put :update, :id => @ambiente.to_param, :ambiente => @ambiente.attributes
    assert_redirected_to ambiente_path(assigns(:ambiente))
  end

  test "should destroy ambiente" do
    assert_difference('Ambiente.count', -1) do
      delete :destroy, :id => @ambiente.to_param
    end

    assert_redirected_to ambientes_path
  end
end


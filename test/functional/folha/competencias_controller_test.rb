# -*- encoding : utf-8 -*-
require 'test_helper'

class Folha::CompetenciasControllerTest < ActionController::TestCase
  setup do
    @folha_competencia = folha_competencias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:folha_competencias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create folha_competencia" do
    assert_difference('Folha::Competencia.count') do
      post :create, :folha_competencia => @folha_competencia.attributes
    end

    assert_redirected_to folha_competencia_path(assigns(:folha_competencia))
  end

  test "should show folha_competencia" do
    get :show, :id => @folha_competencia.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @folha_competencia.to_param
    assert_response :success
  end

  test "should update folha_competencia" do
    put :update, :id => @folha_competencia.to_param, :folha_competencia => @folha_competencia.attributes
    assert_redirected_to folha_competencia_path(assigns(:folha_competencia))
  end

  test "should destroy folha_competencia" do
    assert_difference('Folha::Competencia.count', -1) do
      delete :destroy, :id => @folha_competencia.to_param
    end

    assert_redirected_to folha_competencias_path
  end
end


# -*- encoding : utf-8 -*-
require 'test_helper'

class Folha::EventosControllerTest < ActionController::TestCase
  setup do
    @folha_evento = folha_eventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:folha_eventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create folha_evento" do
    assert_difference('Folha::Evento.count') do
      post :create, :folha_evento => @folha_evento.attributes
    end

    assert_redirected_to folha_evento_path(assigns(:folha_evento))
  end

  test "should show folha_evento" do
    get :show, :id => @folha_evento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @folha_evento.to_param
    assert_response :success
  end

  test "should update folha_evento" do
    put :update, :id => @folha_evento.to_param, :folha_evento => @folha_evento.attributes
    assert_redirected_to folha_evento_path(assigns(:folha_evento))
  end

  test "should destroy folha_evento" do
    assert_difference('Folha::Evento.count', -1) do
      delete :destroy, :id => @folha_evento.to_param
    end

    assert_redirected_to folha_eventos_path
  end
end


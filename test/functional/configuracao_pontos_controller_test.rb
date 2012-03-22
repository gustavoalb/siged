require 'test_helper'

class ConfiguracaoPontosControllerTest < ActionController::TestCase
  setup do
    @configuracao_ponto = configuracao_pontos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configuracao_pontos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configuracao_ponto" do
    assert_difference('ConfiguracaoPonto.count') do
      post :create, :configuracao_ponto => @configuracao_ponto.attributes
    end

    assert_redirected_to configuracao_ponto_path(assigns(:configuracao_ponto))
  end

  test "should show configuracao_ponto" do
    get :show, :id => @configuracao_ponto.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @configuracao_ponto.to_param
    assert_response :success
  end

  test "should update configuracao_ponto" do
    put :update, :id => @configuracao_ponto.to_param, :configuracao_ponto => @configuracao_ponto.attributes
    assert_redirected_to configuracao_ponto_path(assigns(:configuracao_ponto))
  end

  test "should destroy configuracao_ponto" do
    assert_difference('ConfiguracaoPonto.count', -1) do
      delete :destroy, :id => @configuracao_ponto.to_param
    end

    assert_redirected_to configuracao_pontos_path
  end
end

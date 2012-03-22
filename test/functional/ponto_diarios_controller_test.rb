require 'test_helper'

class PontoDiariosControllerTest < ActionController::TestCase
  setup do
    @ponto_diario = ponto_diarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ponto_diarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ponto_diario" do
    assert_difference('PontoDiario.count') do
      post :create, :ponto_diario => @ponto_diario.attributes
    end

    assert_redirected_to ponto_diario_path(assigns(:ponto_diario))
  end

  test "should show ponto_diario" do
    get :show, :id => @ponto_diario.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ponto_diario.to_param
    assert_response :success
  end

  test "should update ponto_diario" do
    put :update, :id => @ponto_diario.to_param, :ponto_diario => @ponto_diario.attributes
    assert_redirected_to ponto_diario_path(assigns(:ponto_diario))
  end

  test "should destroy ponto_diario" do
    assert_difference('PontoDiario.count', -1) do
      delete :destroy, :id => @ponto_diario.to_param
    end

    assert_redirected_to ponto_diarios_path
  end
end

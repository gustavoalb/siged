require 'test_helper'

class RequisicoesControllerTest < ActionController::TestCase
  setup do
    @requisicao = requisicoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requisicoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requisicao" do
    assert_difference('Requisicao.count') do
      post :create, requisicao: { funcionario_id: @requisicao.funcionario_id, periodo_id: @requisicao.periodo_id, status: @requisicao.status, tipo_requisicao: @requisicao.tipo_requisicao }
    end

    assert_redirected_to requisicao_path(assigns(:requisicao))
  end

  test "should show requisicao" do
    get :show, id: @requisicao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @requisicao
    assert_response :success
  end

  test "should update requisicao" do
    put :update, id: @requisicao, requisicao: { funcionario_id: @requisicao.funcionario_id, periodo_id: @requisicao.periodo_id, status: @requisicao.status, tipo_requisicao: @requisicao.tipo_requisicao }
    assert_redirected_to requisicao_path(assigns(:requisicao))
  end

  test "should destroy requisicao" do
    assert_difference('Requisicao.count', -1) do
      delete :destroy, id: @requisicao
    end

    assert_redirected_to requisicoes_path
  end
end

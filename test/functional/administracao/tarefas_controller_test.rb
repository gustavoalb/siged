require 'test_helper'

class Administracao::TarefasControllerTest < ActionController::TestCase
  setup do
    @administracao_tarefa = administracao_tarefas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administracao_tarefas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administracao_tarefa" do
    assert_difference('Administracao::Tarefa.count') do
      post :create, :administracao_tarefa => @administracao_tarefa.attributes
    end

    assert_redirected_to administracao_tarefa_path(assigns(:administracao_tarefa))
  end

  test "should show administracao_tarefa" do
    get :show, :id => @administracao_tarefa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @administracao_tarefa.to_param
    assert_response :success
  end

  test "should update administracao_tarefa" do
    put :update, :id => @administracao_tarefa.to_param, :administracao_tarefa => @administracao_tarefa.attributes
    assert_redirected_to administracao_tarefa_path(assigns(:administracao_tarefa))
  end

  test "should destroy administracao_tarefa" do
    assert_difference('Administracao::Tarefa.count', -1) do
      delete :destroy, :id => @administracao_tarefa.to_param
    end

    assert_redirected_to administracao_tarefas_path
  end
end

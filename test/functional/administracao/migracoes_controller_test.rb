require 'test_helper'

class Administracao::MigracoesControllerTest < ActionController::TestCase
  setup do
    @administracao_migracao = administracao_migracoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administracao_migracoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administracao_migracao" do
    assert_difference('Administracao::Migracao.count') do
      post :create, :administracao_migracao => @administracao_migracao.attributes
    end

    assert_redirected_to administracao_migracao_path(assigns(:administracao_migracao))
  end

  test "should show administracao_migracao" do
    get :show, :id => @administracao_migracao.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @administracao_migracao.to_param
    assert_response :success
  end

  test "should update administracao_migracao" do
    put :update, :id => @administracao_migracao.to_param, :administracao_migracao => @administracao_migracao.attributes
    assert_redirected_to administracao_migracao_path(assigns(:administracao_migracao))
  end

  test "should destroy administracao_migracao" do
    assert_difference('Administracao::Migracao.count', -1) do
      delete :destroy, :id => @administracao_migracao.to_param
    end

    assert_redirected_to administracao_migracoes_path
  end
end

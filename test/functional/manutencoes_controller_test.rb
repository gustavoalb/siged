require 'test_helper'

class ManutencoesControllerTest < ActionController::TestCase
  setup do
    @manutencao = manutencoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manutencoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manutencao" do
    assert_difference('Manutencao.count') do
      post :create, :manutencao => @manutencao.attributes
    end

    assert_redirected_to manutencao_path(assigns(:manutencao))
  end

  test "should show manutencao" do
    get :show, :id => @manutencao.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @manutencao.to_param
    assert_response :success
  end

  test "should update manutencao" do
    put :update, :id => @manutencao.to_param, :manutencao => @manutencao.attributes
    assert_redirected_to manutencao_path(assigns(:manutencao))
  end

  test "should destroy manutencao" do
    assert_difference('Manutencao.count', -1) do
      delete :destroy, :id => @manutencao.to_param
    end

    assert_redirected_to manutencoes_path
  end
end

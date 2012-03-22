require 'test_helper'

class LotacaosControllerTest < ActionController::TestCase
  setup do
    @lotacao = lotacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lotacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lotacao" do
    assert_difference('Lotacao.count') do
      post :create, :lotacao => @lotacao.attributes
    end

    assert_redirected_to lotacao_path(assigns(:lotacao))
  end

  test "should show lotacao" do
    get :show, :id => @lotacao.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lotacao.to_param
    assert_response :success
  end

  test "should update lotacao" do
    put :update, :id => @lotacao.to_param, :lotacao => @lotacao.attributes
    assert_redirected_to lotacao_path(assigns(:lotacao))
  end

  test "should destroy lotacao" do
    assert_difference('Lotacao.count', -1) do
      delete :destroy, :id => @lotacao.to_param
    end

    assert_redirected_to lotacaos_path
  end
end

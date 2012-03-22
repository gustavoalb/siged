require 'test_helper'

class FormacaosControllerTest < ActionController::TestCase
  setup do
    @formacao = formacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formacao" do
    assert_difference('Formacao.count') do
      post :create, :formacao => @formacao.attributes
    end

    assert_redirected_to formacao_path(assigns(:formacao))
  end

  test "should show formacao" do
    get :show, :id => @formacao.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @formacao.to_param
    assert_response :success
  end

  test "should update formacao" do
    put :update, :id => @formacao.to_param, :formacao => @formacao.attributes
    assert_redirected_to formacao_path(assigns(:formacao))
  end

  test "should destroy formacao" do
    assert_difference('Formacao.count', -1) do
      delete :destroy, :id => @formacao.to_param
    end

    assert_redirected_to formacaos_path
  end
end

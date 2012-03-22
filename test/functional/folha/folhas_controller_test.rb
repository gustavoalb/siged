require 'test_helper'

class Folha::FolhasControllerTest < ActionController::TestCase
  setup do
    @folha_folha = folha_folhas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:folha_folhas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create folha_folha" do
    assert_difference('Folha::Folha.count') do
      post :create, :folha_folha => @folha_folha.attributes
    end

    assert_redirected_to folha_folha_path(assigns(:folha_folha))
  end

  test "should show folha_folha" do
    get :show, :id => @folha_folha.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @folha_folha.to_param
    assert_response :success
  end

  test "should update folha_folha" do
    put :update, :id => @folha_folha.to_param, :folha_folha => @folha_folha.attributes
    assert_redirected_to folha_folha_path(assigns(:folha_folha))
  end

  test "should destroy folha_folha" do
    assert_difference('Folha::Folha.count', -1) do
      delete :destroy, :id => @folha_folha.to_param
    end

    assert_redirected_to folha_folhas_path
  end
end

require 'test_helper'

class ReferenciaNiveisControllerTest < ActionController::TestCase
  setup do
    @referencia_nivei = referencia_niveis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referencia_niveis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referencia_nivei" do
    assert_difference('ReferenciaNivei.count') do
      post :create, :referencia_nivei => @referencia_nivei.attributes
    end

    assert_redirected_to referencia_nivei_path(assigns(:referencia_nivei))
  end

  test "should show referencia_nivei" do
    get :show, :id => @referencia_nivei.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @referencia_nivei.to_param
    assert_response :success
  end

  test "should update referencia_nivei" do
    put :update, :id => @referencia_nivei.to_param, :referencia_nivei => @referencia_nivei.attributes
    assert_redirected_to referencia_nivei_path(assigns(:referencia_nivei))
  end

  test "should destroy referencia_nivei" do
    assert_difference('ReferenciaNivei.count', -1) do
      delete :destroy, :id => @referencia_nivei.to_param
    end

    assert_redirected_to referencia_niveis_path
  end
end

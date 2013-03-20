require 'test_helper'

class PosicionsControllerTest < ActionController::TestCase
  setup do
    @posicion = posicions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posicions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create posicion" do
    assert_difference('Posicion.count') do
      post :create, posicion: { nombre: @posicion.nombre }
    end

    assert_redirected_to posicion_path(assigns(:posicion))
  end

  test "should show posicion" do
    get :show, id: @posicion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @posicion
    assert_response :success
  end

  test "should update posicion" do
    put :update, id: @posicion, posicion: { nombre: @posicion.nombre }
    assert_redirected_to posicion_path(assigns(:posicion))
  end

  test "should destroy posicion" do
    assert_difference('Posicion.count', -1) do
      delete :destroy, id: @posicion
    end

    assert_redirected_to posicions_path
  end
end

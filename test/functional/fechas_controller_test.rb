require 'test_helper'

class FechasControllerTest < ActionController::TestCase
  setup do
    @fecha = fechas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fechas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fecha" do
    assert_difference('Fecha.count') do
      post :create, fecha: { fecha_desde: @fecha.fecha_desde, fecha_hasta: @fecha.fecha_hasta, nombre_torneo: @fecha.nombre_torneo, numero: @fecha.numero }
    end

    assert_redirected_to fecha_path(assigns(:fecha))
  end

  test "should show fecha" do
    get :show, id: @fecha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fecha
    assert_response :success
  end

  test "should update fecha" do
    put :update, id: @fecha, fecha: { fecha_desde: @fecha.fecha_desde, fecha_hasta: @fecha.fecha_hasta, nombre_torneo: @fecha.nombre_torneo, numero: @fecha.numero }
    assert_redirected_to fecha_path(assigns(:fecha))
  end

  test "should destroy fecha" do
    assert_difference('Fecha.count', -1) do
      delete :destroy, id: @fecha
    end

    assert_redirected_to fechas_path
  end
end

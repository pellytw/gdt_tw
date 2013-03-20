require 'test_helper'

class EstadosControllerTest < ActionController::TestCase
  setup do
    @estado = estados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado" do
    assert_difference('Estado.count') do
      post :create, estado: { capitan: @estado.capitan, chenemigo: @estado.chenemigo, fecha_id: @estado.fecha_id, figura: @estado.figura, goles: @estado.goles, goles_de_penal: @estado.goles_de_penal, jugador_id: @estado.jugador_id, no_suma_puntos: @estado.no_suma_puntos, penales_atajados: @estado.penales_atajados, penales_errados: @estado.penales_errados, puntaje_dario: @estado.puntaje_dario, puntaje_total_fecha: @estado.puntaje_total_fecha, roja: @estado.roja, titular: @estado.titular, valla_invicta: @estado.valla_invicta }
    end

    assert_redirected_to estado_path(assigns(:estado))
  end

  test "should show estado" do
    get :show, id: @estado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado
    assert_response :success
  end

  test "should update estado" do
    put :update, id: @estado, estado: { capitan: @estado.capitan, chenemigo: @estado.chenemigo, fecha_id: @estado.fecha_id, figura: @estado.figura, goles: @estado.goles, goles_de_penal: @estado.goles_de_penal, jugador_id: @estado.jugador_id, no_suma_puntos: @estado.no_suma_puntos, penales_atajados: @estado.penales_atajados, penales_errados: @estado.penales_errados, puntaje_dario: @estado.puntaje_dario, puntaje_total_fecha: @estado.puntaje_total_fecha, roja: @estado.roja, titular: @estado.titular, valla_invicta: @estado.valla_invicta }
    assert_redirected_to estado_path(assigns(:estado))
  end

  test "should destroy estado" do
    assert_difference('Estado.count', -1) do
      delete :destroy, id: @estado
    end

    assert_redirected_to estados_path
  end
end

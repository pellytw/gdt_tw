require 'test_helper'

class TacticasControllerTest < ActionController::TestCase
  setup do
    @tactica = tacticas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tacticas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tactica" do
    assert_difference('Tactica.count') do
      post :create, tactica: { nombre: @tactica.nombre }
    end

    assert_redirected_to tactica_path(assigns(:tactica))
  end

  test "should show tactica" do
    get :show, id: @tactica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tactica
    assert_response :success
  end

  test "should update tactica" do
    put :update, id: @tactica, tactica: { nombre: @tactica.nombre }
    assert_redirected_to tactica_path(assigns(:tactica))
  end

  test "should destroy tactica" do
    assert_difference('Tactica.count', -1) do
      delete :destroy, id: @tactica
    end

    assert_redirected_to tacticas_path
  end
end

require 'test_helper'

class FertilizantesControllerTest < ActionController::TestCase
  setup do
    @fertilizante = fertilizantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fertilizantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fertilizante" do
    assert_difference('Fertilizante.count') do
      post :create, fertilizante: { cantidad: @fertilizante.cantidad, descripcion: @fertilizante.descripcion, nombre: @fertilizante.nombre, precio: @fertilizante.precio }
    end

    assert_redirected_to fertilizante_path(assigns(:fertilizante))
  end

  test "should show fertilizante" do
    get :show, id: @fertilizante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fertilizante
    assert_response :success
  end

  test "should update fertilizante" do
    patch :update, id: @fertilizante, fertilizante: { cantidad: @fertilizante.cantidad, descripcion: @fertilizante.descripcion, nombre: @fertilizante.nombre, precio: @fertilizante.precio }
    assert_redirected_to fertilizante_path(assigns(:fertilizante))
  end

  test "should destroy fertilizante" do
    assert_difference('Fertilizante.count', -1) do
      delete :destroy, id: @fertilizante
    end

    assert_redirected_to fertilizantes_path
  end
end

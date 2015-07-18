require 'test_helper'

class PresidentesControllerTest < ActionController::TestCase
  setup do
    @presindente = presidentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presidentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presindente" do
    assert_difference('Presindente.count') do
      post :create, presindente: { apellido: @presindente.apellido, contenido: @presindente.contenido, descripcion: @presindente.descripcion, dni: @presindente.dni, email: @presindente.email, foto: @presindente.foto, imagen1: @presindente.imagen1, imagen2: @presindente.imagen2, imagen3: @presindente.imagen3, imagen4: @presindente.imagen4, nombre: @presindente.nombre, ruc: @presindente.ruc, telefono1: @presindente.telefono1, telefono2: @presindente.telefono2 }
    end

    assert_redirected_to presindente_path(assigns(:presindente))
  end

  test "should show presindente" do
    get :show, id: @presindente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @presindente
    assert_response :success
  end

  test "should update presindente" do
    patch :update, id: @presindente, presindente: { apellido: @presindente.apellido, contenido: @presindente.contenido, descripcion: @presindente.descripcion, dni: @presindente.dni, email: @presindente.email, foto: @presindente.foto, imagen1: @presindente.imagen1, imagen2: @presindente.imagen2, imagen3: @presindente.imagen3, imagen4: @presindente.imagen4, nombre: @presindente.nombre, ruc: @presindente.ruc, telefono1: @presindente.telefono1, telefono2: @presindente.telefono2 }
    assert_redirected_to presindente_path(assigns(:presindente))
  end

  test "should destroy presindente" do
    assert_difference('Presindente.count', -1) do
      delete :destroy, id: @presindente
    end

    assert_redirected_to presidentes_path
  end
end

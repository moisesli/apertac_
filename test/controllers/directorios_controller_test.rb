require 'test_helper'

class DirectoriosControllerTest < ActionController::TestCase
  setup do
    @directorio = directorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directorios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create directorio" do
    assert_difference('Directorio.count') do
      post :create, directorio: { contenido: @directorio.contenido, descripcion: @directorio.descripcion, dni: @directorio.dni, imagen1: @directorio.imagen1, imagen2: @directorio.imagen2, imagen3: @directorio.imagen3, imagen4: @directorio.imagen4, nombre_empresa: @directorio.nombre_empresa, nombre_responsable: @directorio.nombre_responsable, numero1: @directorio.numero1, numero2: @directorio.numero2, ruc: @directorio.ruc }
    end

    assert_redirected_to directorio_path(assigns(:directorio))
  end

  test "should show directorio" do
    get :show, id: @directorio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @directorio
    assert_response :success
  end

  test "should update directorio" do
    patch :update, id: @directorio, directorio: { contenido: @directorio.contenido, descripcion: @directorio.descripcion, dni: @directorio.dni, imagen1: @directorio.imagen1, imagen2: @directorio.imagen2, imagen3: @directorio.imagen3, imagen4: @directorio.imagen4, nombre_empresa: @directorio.nombre_empresa, nombre_responsable: @directorio.nombre_responsable, numero1: @directorio.numero1, numero2: @directorio.numero2, ruc: @directorio.ruc }
    assert_redirected_to directorio_path(assigns(:directorio))
  end

  test "should destroy directorio" do
    assert_difference('Directorio.count', -1) do
      delete :destroy, id: @directorio
    end

    assert_redirected_to directorios_path
  end
end

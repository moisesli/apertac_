require 'test_helper'

class ConvocatoriasControllerTest < ActionController::TestCase
  setup do
    @convocatoria = convocatorias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convocatorias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convocatoria" do
    assert_difference('Convocatoria.count') do
      post :create, convocatoria: { contenido: @convocatoria.contenido, descripcion: @convocatoria.descripcion, imagen1: @convocatoria.imagen1, imagen2: @convocatoria.imagen2, imagen3: @convocatoria.imagen3, imagen4: @convocatoria.imagen4, titulo: @convocatoria.titulo, visible: @convocatoria.visible }
    end

    assert_redirected_to convocatoria_path(assigns(:convocatoria))
  end

  test "should show convocatoria" do
    get :show, id: @convocatoria
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @convocatoria
    assert_response :success
  end

  test "should update convocatoria" do
    patch :update, id: @convocatoria, convocatoria: { contenido: @convocatoria.contenido, descripcion: @convocatoria.descripcion, imagen1: @convocatoria.imagen1, imagen2: @convocatoria.imagen2, imagen3: @convocatoria.imagen3, imagen4: @convocatoria.imagen4, titulo: @convocatoria.titulo, visible: @convocatoria.visible }
    assert_redirected_to convocatoria_path(assigns(:convocatoria))
  end

  test "should destroy convocatoria" do
    assert_difference('Convocatoria.count', -1) do
      delete :destroy, id: @convocatoria
    end

    assert_redirected_to convocatorias_path
  end
end

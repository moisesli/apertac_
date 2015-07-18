require 'test_helper'

class DocumentosControllerTest < ActionController::TestCase
  setup do
    @documento = documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documento" do
    assert_difference('Documento.count') do
      post :create, documento: { archivo1: @documento.archivo1, archivo2: @documento.archivo2, archivo3: @documento.archivo3, archivo4: @documento.archivo4, archivo5: @documento.archivo5, contenido: @documento.contenido, descripcion: @documento.descripcion, imagen1: @documento.imagen1, imagen2: @documento.imagen2, imagen3: @documento.imagen3, imagen4: @documento.imagen4, imagen5: @documento.imagen5, tipo_documento: @documento.tipo_documento, tipo_extension: @documento.tipo_extension, titulo: @documento.titulo, visible: @documento.visible }
    end

    assert_redirected_to documento_path(assigns(:documento))
  end

  test "should show documento" do
    get :show, id: @documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documento
    assert_response :success
  end

  test "should update documento" do
    patch :update, id: @documento, documento: { archivo1: @documento.archivo1, archivo2: @documento.archivo2, archivo3: @documento.archivo3, archivo4: @documento.archivo4, archivo5: @documento.archivo5, contenido: @documento.contenido, descripcion: @documento.descripcion, imagen1: @documento.imagen1, imagen2: @documento.imagen2, imagen3: @documento.imagen3, imagen4: @documento.imagen4, imagen5: @documento.imagen5, tipo_documento: @documento.tipo_documento, tipo_extension: @documento.tipo_extension, titulo: @documento.titulo, visible: @documento.visible }
    assert_redirected_to documento_path(assigns(:documento))
  end

  test "should destroy documento" do
    assert_difference('Documento.count', -1) do
      delete :destroy, id: @documento
    end

    assert_redirected_to documentos_path
  end
end

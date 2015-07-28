require 'test_helper'

class ContactenosControllerTest < ActionController::TestCase
  setup do
    @contacto = contactenos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contactenos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contacto" do
    assert_difference('Contacto.count') do
      post :create, contacto: { adjunto1: @contacto.adjunto1, adjunto2: @contacto.adjunto2, adjunto3: @contacto.adjunto3, asunto: @contacto.asunto, contenido: @contacto.contenido, email: @contacto.email, nombre: @contacto.nombre, tipo: @contacto.tipo }
    end

    assert_redirected_to contacto_path(assigns(:contacto))
  end

  test "should show contacto" do
    get :show, id: @contacto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contacto
    assert_response :success
  end

  test "should update contacto" do
    patch :update, id: @contacto, contacto: { adjunto1: @contacto.adjunto1, adjunto2: @contacto.adjunto2, adjunto3: @contacto.adjunto3, asunto: @contacto.asunto, contenido: @contacto.contenido, email: @contacto.email, nombre: @contacto.nombre, tipo: @contacto.tipo }
    assert_redirected_to contacto_path(assigns(:contacto))
  end

  test "should destroy contacto" do
    assert_difference('Contacto.count', -1) do
      delete :destroy, id: @contacto
    end

    assert_redirected_to contactenos_path
  end
end

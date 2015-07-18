require 'test_helper'

class WebamigasControllerTest < ActionController::TestCase
  setup do
    @webamiga = webamigas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webamigas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webamiga" do
    assert_difference('Webamiga.count') do
      post :create, webamiga: { contenido: @webamiga.contenido, descripcion: @webamiga.descripcion, imagen1: @webamiga.imagen1, imagen2: @webamiga.imagen2, logo: @webamiga.logo, titulo: @webamiga.titulo, url: @webamiga.url, visible: @webamiga.visible }
    end

    assert_redirected_to webamiga_path(assigns(:webamiga))
  end

  test "should show webamiga" do
    get :show, id: @webamiga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @webamiga
    assert_response :success
  end

  test "should update webamiga" do
    patch :update, id: @webamiga, webamiga: { contenido: @webamiga.contenido, descripcion: @webamiga.descripcion, imagen1: @webamiga.imagen1, imagen2: @webamiga.imagen2, logo: @webamiga.logo, titulo: @webamiga.titulo, url: @webamiga.url, visible: @webamiga.visible }
    assert_redirected_to webamiga_path(assigns(:webamiga))
  end

  test "should destroy webamiga" do
    assert_difference('Webamiga.count', -1) do
      delete :destroy, id: @webamiga
    end

    assert_redirected_to webamigas_path
  end
end

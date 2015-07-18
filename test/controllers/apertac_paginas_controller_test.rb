require 'test_helper'

class ApertacPaginasControllerTest < ActionController::TestCase
  setup do
    @apertac_pagina = apertac_paginas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apertac_paginas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apertac_pagina" do
    assert_difference('ApertacPagina.count') do
      post :create, apertac_pagina: { contenido: @apertac_pagina.contenido, imagen10: @apertac_pagina.imagen10, imagen1: @apertac_pagina.imagen1, imagen2: @apertac_pagina.imagen2, imagen3: @apertac_pagina.imagen3, imagen4: @apertac_pagina.imagen4, imagen5: @apertac_pagina.imagen5, imagen6: @apertac_pagina.imagen6, imagen7: @apertac_pagina.imagen7, imagen8: @apertac_pagina.imagen8, imagen9: @apertac_pagina.imagen9, titulo: @apertac_pagina.titulo, visible: @apertac_pagina.visible }
    end

    assert_redirected_to apertac_pagina_path(assigns(:apertac_pagina))
  end

  test "should show apertac_pagina" do
    get :show, id: @apertac_pagina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apertac_pagina
    assert_response :success
  end

  test "should update apertac_pagina" do
    patch :update, id: @apertac_pagina, apertac_pagina: { contenido: @apertac_pagina.contenido, imagen10: @apertac_pagina.imagen10, imagen1: @apertac_pagina.imagen1, imagen2: @apertac_pagina.imagen2, imagen3: @apertac_pagina.imagen3, imagen4: @apertac_pagina.imagen4, imagen5: @apertac_pagina.imagen5, imagen6: @apertac_pagina.imagen6, imagen7: @apertac_pagina.imagen7, imagen8: @apertac_pagina.imagen8, imagen9: @apertac_pagina.imagen9, titulo: @apertac_pagina.titulo, visible: @apertac_pagina.visible }
    assert_redirected_to apertac_pagina_path(assigns(:apertac_pagina))
  end

  test "should destroy apertac_pagina" do
    assert_difference('ApertacPagina.count', -1) do
      delete :destroy, id: @apertac_pagina
    end

    assert_redirected_to apertac_paginas_path
  end
end

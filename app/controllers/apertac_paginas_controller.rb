class ApertacPaginasController < ApplicationController
  layout 'backend'
  before_action :set_apertac_pagina, only: [:show, :edit, :update, :destroy]

  # GET /apertac_paginas
  # GET /apertac_paginas.json
  def index
    @apertac_paginas = ApertacPagina.all
  end

  # GET /apertac_paginas/1
  # GET /apertac_paginas/1.json
  def show
  end

  # GET /apertac_paginas/new
  def new
    @apertac_pagina = ApertacPagina.new
  end

  # GET /apertac_paginas/1/edit
  def edit
  end

  # POST /apertac_paginas
  # POST /apertac_paginas.json
  def create
    @apertac_pagina = ApertacPagina.new(apertac_pagina_params)

    respond_to do |format|
      if @apertac_pagina.save
        format.html { redirect_to @apertac_pagina, notice: 'Apertac pagina was successfully created.' }
        format.json { render :show, status: :created, location: @apertac_pagina }
      else
        format.html { render :new }
        format.json { render json: @apertac_pagina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apertac_paginas/1
  # PATCH/PUT /apertac_paginas/1.json
  def update
    respond_to do |format|
      if @apertac_pagina.update(apertac_pagina_params)
        format.html { redirect_to @apertac_pagina, notice: 'Apertac pagina was successfully updated.' }
        format.json { render :show, status: :ok, location: @apertac_pagina }
      else
        format.html { render :edit }
        format.json { render json: @apertac_pagina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apertac_paginas/1
  # DELETE /apertac_paginas/1.json
  def destroy
    @apertac_pagina.destroy
    respond_to do |format|
      format.html { redirect_to apertac_paginas_url, notice: 'Apertac pagina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apertac_pagina
      @apertac_pagina = ApertacPagina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apertac_pagina_params
      params.require(:apertac_pagina).permit(:titulo, :contenido, :visible, :imagen1, :imagen2, :imagen3, :imagen4, :imagen5, :imagen6, :imagen7, :imagen8, :imagen9, :imagen10)
    end
end

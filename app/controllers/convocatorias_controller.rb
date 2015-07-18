class ConvocatoriasController < ApplicationController
  layout 'backend'
  before_action :set_convocatoria, only: [:show, :edit, :update, :destroy]

  # GET /convocatorias
  # GET /convocatorias.json
  def index
    @convocatorias = Convocatoria.all
  end

  # GET /convocatorias/1
  # GET /convocatorias/1.json
  def show
  end

  # GET /convocatorias/new
  def new
    @convocatoria = Convocatoria.new
  end

  # GET /convocatorias/1/edit
  def edit
  end

  # POST /convocatorias
  # POST /convocatorias.json
  def create
    @convocatoria = Convocatoria.new(convocatoria_params)

    respond_to do |format|
      if @convocatoria.save
        format.html { redirect_to @convocatoria, notice: 'Convocatoria was successfully created.' }
        format.json { render :show, status: :created, location: @convocatoria }
      else
        format.html { render :new }
        format.json { render json: @convocatoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /convocatorias/1
  # PATCH/PUT /convocatorias/1.json
  def update
    respond_to do |format|
      if @convocatoria.update(convocatoria_params)
        format.html { redirect_to @convocatoria, notice: 'Convocatoria was successfully updated.' }
        format.json { render :show, status: :ok, location: @convocatoria }
      else
        format.html { render :edit }
        format.json { render json: @convocatoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /convocatorias/1
  # DELETE /convocatorias/1.json
  def destroy
    @convocatoria.destroy
    respond_to do |format|
      format.html { redirect_to convocatorias_url, notice: 'Convocatoria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convocatoria
      @convocatoria = Convocatoria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def convocatoria_params
      params.require(:convocatoria).permit(:titulo, :descripcion, :contenido, :visible, :imagen1, :imagen2, :imagen3, :imagen4)
    end
end

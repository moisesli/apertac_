class DirectoriosController < ApplicationController
  layout 'backend'
  before_action :set_directorio, only: [:show, :edit, :update, :destroy]

  # GET /directorios
  # GET /directorios.json
  def index
    @directorios = Directorio.all
  end

  # GET /directorios/1
  # GET /directorios/1.json
  def show
  end

  # GET /directorios/new
  def new
    @directorio = Directorio.new
  end

  # GET /directorios/1/edit
  def edit
  end

  # POST /directorios
  # POST /directorios.json
  def create
    @directorio = Directorio.new(directorio_params)

    respond_to do |format|
      if @directorio.save
        format.html { redirect_to @directorio, notice: 'Directorio was successfully created.' }
        format.json { render :show, status: :created, location: @directorio }
      else
        format.html { render :new }
        format.json { render json: @directorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directorios/1
  # PATCH/PUT /directorios/1.json
  def update
    respond_to do |format|
      if @directorio.update(directorio_params)
        format.html { redirect_to @directorio, notice: 'Directorio was successfully updated.' }
        format.json { render :show, status: :ok, location: @directorio }
      else
        format.html { render :edit }
        format.json { render json: @directorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directorios/1
  # DELETE /directorios/1.json
  def destroy
    @directorio.destroy
    respond_to do |format|
      format.html { redirect_to directorios_url, notice: 'Directorio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_directorio
      @directorio = Directorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def directorio_params
      params.require(:directorio).permit(:nombre_empresa, :nombre_responsable, :numero1, :numero2, :ruc, :dni, :descripcion, :contenido, :imagen1, :imagen2, :imagen3, :imagen4, :logo)
    end
end

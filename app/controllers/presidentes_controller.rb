class PresidentesController < ApplicationController
  layout 'backend'
  before_action :set_presindente, only: [:show, :edit, :update, :destroy]

  # GET /presidentes
  # GET /presidentes.json
  def index
    @presidentes = Presindente.all
  end

  # GET /presidentes/1
  # GET /presidentes/1.json
  def show
  end

  # GET /presidentes/new
  def new
    @presindente = Presindente.new
  end

  # GET /presidentes/1/edit
  def edit
  end

  # POST /presidentes
  # POST /presidentes.json
  def create
    @presindente = Presindente.new(presindente_params)

    respond_to do |format|
      if @presindente.save
        format.html { redirect_to @presindente, notice: 'Presindente was successfully created.' }
        format.json { render :show, status: :created, location: @presindente }
      else
        format.html { render :new }
        format.json { render json: @presindente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presidentes/1
  # PATCH/PUT /presidentes/1.json
  def update
    respond_to do |format|
      if @presindente.update(presindente_params)
        format.html { redirect_to @presindente, notice: 'Presindente was successfully updated.' }
        format.json { render :show, status: :ok, location: @presindente }
      else
        format.html { render :edit }
        format.json { render json: @presindente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presidentes/1
  # DELETE /presidentes/1.json
  def destroy
    @presindente.destroy
    respond_to do |format|
      format.html { redirect_to presidentes_url, notice: 'Presindente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presindente
      @presindente = Presindente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presindente_params
      params.require(:presindente).permit(:nombre, :apellido, :dni, :telefono1, :telefono2, :ruc, :email, :descripcion, :contenido, :foto, :imagen1, :imagen2, :imagen3, :imagen4)
    end
end

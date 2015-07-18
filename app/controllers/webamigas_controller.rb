class WebamigasController < ApplicationController
  layout 'backend'
  before_action :set_webamiga, only: [:show, :edit, :update, :destroy]

  # GET /webamigas
  # GET /webamigas.json
  def index
    @webamigas = Webamiga.all
  end

  # GET /webamigas/1
  # GET /webamigas/1.json
  def show
  end

  # GET /webamigas/new
  def new
    @webamiga = Webamiga.new
  end

  # GET /webamigas/1/edit
  def edit
  end

  # POST /webamigas
  # POST /webamigas.json
  def create
    @webamiga = Webamiga.new(webamiga_params)

    respond_to do |format|
      if @webamiga.save
        format.html { redirect_to @webamiga, notice: 'Webamiga was successfully created.' }
        format.json { render :show, status: :created, location: @webamiga }
      else
        format.html { render :new }
        format.json { render json: @webamiga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webamigas/1
  # PATCH/PUT /webamigas/1.json
  def update
    respond_to do |format|
      if @webamiga.update(webamiga_params)
        format.html { redirect_to @webamiga, notice: 'Webamiga was successfully updated.' }
        format.json { render :show, status: :ok, location: @webamiga }
      else
        format.html { render :edit }
        format.json { render json: @webamiga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webamigas/1
  # DELETE /webamigas/1.json
  def destroy
    @webamiga.destroy
    respond_to do |format|
      format.html { redirect_to webamigas_url, notice: 'Webamiga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webamiga
      @webamiga = Webamiga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def webamiga_params
      params.require(:webamiga).permit(:titulo, :descripcion, :url, :logo, :contenido, :imagen1, :imagen2, :visible)
    end
end

class ContactenosController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  layout 'backend'
  before_action :set_contacto, only: [:show, :edit, :update, :destroy]

  # GET /contactenos
  # GET /contactenos.json
  def index
    @contactenos = Contacto.all
  end

  # GET /contactenos/1
  # GET /contactenos/1.json
  def show
  end

  # GET /contactenos/new
  def new
    @contacto = Contacto.new
  end

  # GET /contactenos/1/edit
  def edit
  end

  # POST /contactenos
  # POST /contactenos.json
  def create
    @contacto = Contacto.new(contacto_params)

    respond_to do |format|
      if @contacto.save
        format.html { redirect_to '/inicios/contactenos_ok.html', notice: 'Contacto was successfully created.' }
        format.json { render :show, status: :created, location: @contacto }
      else
        format.html { render :new }
        format.json { render json: @contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactenos/1
  # PATCH/PUT /contactenos/1.json
  def update
    respond_to do |format|
      if @contacto.update(contacto_params)
        format.html { redirect_to @contacto, notice: 'Contacto was successfully updated.' }
        format.json { render :show, status: :ok, location: @contacto }
      else
        format.html { render :edit }
        format.json { render json: @contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactenos/1
  # DELETE /contactenos/1.json
  def destroy
    @contacto.destroy
    respond_to do |format|
      format.html { redirect_to contactenos_url, notice: 'Contacto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacto
      @contacto = Contacto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contacto_params
      params.require(:contacto).permit(:asunto, :tipo, :nombre, :email, :contenido, :adjunto1, :adjunto2, :adjunto3)
    end
end

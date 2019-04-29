class SitiosController < ApplicationController
  before_action :set_sitio, only: [:show, :edit, :update, :destroy]

  # GET /sitios
  # GET /sitios.json
  def index
    @sitios = Sitio.all
  end

  # GET /sitios/1
  # GET /sitios/1.json
  def show
  end

  # GET /sitios/new
  def new
    @sitio = Sitio.new
  end

  # GET /sitios/1/edit
  def edit
  end

  # POST /sitios
  # POST /sitios.json
  def create
    @sitio = Sitio.new(sitio_params)

    respond_to do |format|
      if @sitio.save
        format.html { redirect_to @sitio, notice: 'Sitio was successfully created.' }
        format.json { render :show, status: :created, location: @sitio }
      else
        format.html { render :new }
        format.json { render json: @sitio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sitios/1
  # PATCH/PUT /sitios/1.json
  def update
    respond_to do |format|
      if @sitio.update(sitio_params)
        format.html { redirect_to @sitio, notice: 'Sitio was successfully updated.' }
        format.json { render :show, status: :ok, location: @sitio }
      else
        format.html { render :edit }
        format.json { render json: @sitio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sitios/1
  # DELETE /sitios/1.json
  def destroy
    @sitio.destroy
    respond_to do |format|
      format.html { redirect_to sitios_url, notice: 'Sitio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sitio
      @sitio = Sitio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sitio_params
      params.require(:sitio).permit(:nombre, :descripcion, :url, :ultimo_indexado)
    end
end

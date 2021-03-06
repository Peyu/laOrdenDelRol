class ArticulosController < ApplicationController
  before_action :set_articulo, only: [:show, :edit, :update, :destroy]
  before_action :ensure_login, only: [:edit, :update, :created, :new, :destroy]
    
  # GET /articulos
  # GET /articulos.json
  def index
    @articulos = Articulo.all
  end

  # GET /articulos/1
  # GET /articulos/1.json
  def show
  end

  # GET /articulos/new
  def new
    @articulo = current_user.articulos.new
  end

  # GET /articulos/1/edit
  def edit
  end

  # POST /articulos
  # POST /articulos.json
  def create
    @articulo = current_user.articulos.new(articulo_params)

    respond_to do |format|
      if @articulo.save
        format.html { redirect_to @articulo, notice: 'El artículo se creo correctamente.' }
        format.json { render :show, status: :created, location: @articulo }
      else
        format.html { render :new }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articulos/1
  # PATCH/PUT /articulos/1.json
  def update
    respond_to do |format|
      if @articulo.update(articulo_params)
        format.html { redirect_to @articulo, notice: 'El artículo se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @articulo }
      else
        format.html { render :edit }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulos/1
  # DELETE /articulos/1.json
  def destroy
    @articulo.destroy
    respond_to do |format|
      format.html { redirect_to articulos_url, notice: 'El artículo se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  protected
    def ensure_login 
      # Always go to login page unless session contains
      # reviewer_id
      redirect_to login_path unless session[:usuario_id]
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articulo
      @articulo = current_user.articulos.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articulo_params
      params.require(:articulo).permit(:titulo, :subtitulo, :cuerpo)
    end
end

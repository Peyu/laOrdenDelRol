class ComentariosController < ApplicationController
  before_action :set_articulo, only: [:create, :destroy]

  def create
    @comentario = @articulo.comentarios.new(comentario_params)
    if @comentario.save
      redirect_to @articulo, notice: "el comentario se ha creado exitosamente"
    else
      redirect to @articulo, alert: "No se ha podido crear el comentario"
    end
  end

  def destroy
    @comentario = @articulo.comentarios.find(params[:id])
    @comentario.destroy
    redirect_to @articulo, notice: "el cometario se ha eliminado correctamente"
  end

  private
    def set_articulo
      @articulo = articulo.find(params[:articulo_id]) 
    end

    def comentario_params
      params.require(:comentario).permit(:autor, :cuerpo)
    end
    

end

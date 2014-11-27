class MensajesController < ApplicationController
  before_action :set_mensaje, only: [:show, :edit, :update, :destroy]

  def index
    @mensajes = Mensaje.all
    respond_with(@mensajes)
  end

  def show
    respond_with(@mensaje)
  end

  def new
    @mensaje = Mensaje.new
    respond_with(@mensaje)
  end

  def edit
  end

  def create
    @mensaje = Mensaje.new(mensaje_params)
    @mensaje.save
    respond_with(@mensaje)
  end

  def update
    @mensaje.update(mensaje_params)
    respond_with(@mensaje)
  end

  def destroy
    @mensaje.destroy
    respond_with(@mensaje)
  end

  private
    def set_mensaje
      @mensaje = Mensaje.find(params[:id])
    end

    def mensaje_params
      params.require(:mensaje).permit(:fecha_id, :texto_id)
    end
end

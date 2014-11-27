class TwUsuariosController < ApplicationController
  before_action :set_tw_usuario, only: [:show, :edit, :update, :destroy]

  # GET /tw_usuarios
  # GET /tw_usuarios.json
  def index
    @tw_usuarios = TwUsuario.all
  end

  # GET /tw_usuarios/1
  # GET /tw_usuarios/1.json
  def show
  end

  # GET /tw_usuarios/new
  def new
    @tw_usuario = TwUsuario.new
  end

  # GET /tw_usuarios/1/edit
  def edit
  end

  # POST /tw_usuarios
  # POST /tw_usuarios.json
  def create
    @tw_usuario = TwUsuario.new(tw_usuario_params)

    respond_to do |format|
      if @tw_usuario.save
        format.html { redirect_to @tw_usuario, notice: 'Tw usuario was successfully created.' }
        format.json { render :show, status: :created, location: @tw_usuario }
      else
        format.html { render :new }
        format.json { render json: @tw_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tw_usuarios/1
  # PATCH/PUT /tw_usuarios/1.json
  def update
    respond_to do |format|
      if @tw_usuario.update(tw_usuario_params)
        format.html { redirect_to @tw_usuario, notice: 'Tw usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @tw_usuario }
      else
        format.html { render :edit }
        format.json { render json: @tw_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tw_usuarios/1
  # DELETE /tw_usuarios/1.json
  def destroy
    @tw_usuario.destroy
    respond_to do |format|
      format.html { redirect_to tw_usuarios_url, notice: 'Tw usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tw_usuario
      @tw_usuario = TwUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tw_usuario_params
      params.require(:tw_usuario).permit(:username, :mensaje_id)
    end
end

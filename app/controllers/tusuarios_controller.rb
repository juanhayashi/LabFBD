class TusuariosController < ApplicationController
  before_action :set_tusuario, only: [:show, :edit, :update, :destroy]

  # GET /tusuarios
  # GET /tusuarios.json
  def index
    @tusuarios = Tusuario.all
  end

  # GET /tusuarios/1
  # GET /tusuarios/1.json
  def show
  end

  # GET /tusuarios/new
  def new
    @tusuario = Tusuario.new
  end

  # GET /tusuarios/1/edit
  def edit
  end

  # POST /tusuarios
  # POST /tusuarios.json
  def create
    @tusuario = Tusuario.new(tusuario_params)

    respond_to do |format|
      if @tusuario.save
        format.html { redirect_to @tusuario, notice: 'Tusuario was successfully created.' }
        format.json { render :show, status: :created, location: @tusuario }
      else
        format.html { render :new }
        format.json { render json: @tusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tusuarios/1
  # PATCH/PUT /tusuarios/1.json
  def update
    respond_to do |format|
      if @tusuario.update(tusuario_params)
        format.html { redirect_to @tusuario, notice: 'Tusuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @tusuario }
      else
        format.html { render :edit }
        format.json { render json: @tusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tusuarios/1
  # DELETE /tusuarios/1.json
  def destroy
    @tusuario.destroy
    respond_to do |format|
      format.html { redirect_to tusuarios_url, notice: 'Tusuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tusuario
      @tusuario = Tusuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tusuario_params
      params.require(:tusuario).permit(:username, :mensaje_id)
    end
end

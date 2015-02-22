class GonogosController < ApplicationController
  load_and_authorize_resource
  before_action :set_gonogo, only: [:show, :edit, :update, :destroy]
before_filter :set_task
  # GET /gonogos
  # GET /gonogos.json
  def index
    @gonogos = Gonogo.all
  end

  # GET /gonogos/1
  # GET /gonogos/1.json
  def show
  end

  # GET /gonogos/new
  def new
    @gonogo = Gonogo.new
  end

  # GET /gonogos/1/edit
  def edit
  end

  # POST /gonogos
  # POST /gonogos.json
  def create
    @gonogo = Gonogo.new
    @gonogo.task = $current_task
    respond_to do |format|
      if @gonogo.save
        format.html { redirect_to @gonogo, notice: '' }
        format.json { render :show, status: :created, location: @gonogo }
      else
        format.html { render :new }
        format.json { render json: @gonogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gonogos/1
  # PATCH/PUT /gonogos/1.json
  def update
    respond_to do |format|
      if @gonogo.update(gonogo_params)
        format.html { redirect_to @gonogo, notice: 'Gonogo was successfully updated.' }
        format.json { render :show, status: :ok, location: @gonogo }
      else
        format.html { render :edit }
        format.json { render json: @gonogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gonogos/1
  # DELETE /gonogos/1.json
  def destroy
    @gonogo.destroy
    respond_to do |format|
      format.html { redirect_to $current_task, notice: 'آزمون GoNoGo با موفقیت انجام شد.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gonogo
      @gonogo = Gonogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gonogo_params
      params.require(:gonogo).permit(:task_id)
    end
end

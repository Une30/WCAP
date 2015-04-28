class BartsController < ApplicationController
  load_and_authorize_resource
  before_action :set_bart, only: [:show, :edit, :update, :destroy]
before_filter :set_task
  # GET /barts
  # GET /barts.json
  def index
    @barts = Bart.all
  end

  # GET /barts/1
  # GET /barts/1.json
  def show
  end

  # GET /barts/new
  def new
    @bart = Bart.new
    @newBalloon = Balloon.new
  end

  # GET /barts/1/edit
  def edit
  end

  # POST /barts
  # POST /barts.json
  def create
    @bart = Bart.new
    @bart.task = $current_task

    respond_to do |format|
      if @bart.save
        format.html { redirect_to @bart, notice: '' }
        format.json { render :show, status: :created, location: @bart }
      else
        format.html { render :new }
        format.json { render json: @bart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barts/1
  # PATCH/PUT /barts/1.json
  def update
    respond_to do |format|
      if @bart.update(bart_params)
        format.html { redirect_to @bart, notice: 'Bart was successfully updated.' }
        format.json { render :show, status: :ok, location: @bart }
      else
        format.html { render :edit }
        format.json { render json: @bart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barts/1
  # DELETE /barts/1.json
  def destroy
    @bart.destroy
    respond_to do |format|
      format.html { redirect_to $current_task, notice: 'آزمون BART با موفقیت حذف شد.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bart
      @bart = Bart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bart_params
      params.require(:bart).permit(:task_id)
    end
end

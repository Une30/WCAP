class DdtanswersController < ApplicationController
  load_and_authorize_resource
  before_action :set_ddtanswer, only: [:show, :edit, :update, :destroy]
before_filter :set_task
  # GET /ddtanswers
  # GET /ddtanswers.json
  def index
    @ddtanswers = Ddtanswer.all
  end

  # GET /ddtanswers/1
  # GET /ddtanswers/1.json
  def show
  end

  # GET /ddtanswers/new
  def new
    @ddtanswer = Ddtanswer.new
    @step = 1
  end

  # GET /ddtanswers/1/edit
  def edit
  end

  # POST /ddtanswers
  # POST /ddtanswers.json
  def create
    @ddtanswer = Ddtanswer.new(ddtanswer_params)
    @ddtanswer.task = $current_task

    respond_to do |format|
      if @ddtanswer.save
        format.html { redirect_to $current_task, notice: '' }
        format.json { render :show, status: :created, location: @ddtanswer }
      else
        format.html { render :new }
        format.json { render json: @ddtanswer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ddtanswers/1
  # PATCH/PUT /ddtanswers/1.json
  def update
    respond_to do |format|
      if @ddtanswer.update(ddtanswer_params)
        format.html { redirect_to @ddtanswer, notice: 'Ddtanswer was successfully updated.' }
        format.json { render :show, status: :ok, location: @ddtanswer }
      else
        format.html { render :edit }
        format.json { render json: @ddtanswer.errors, status: :unprocessable_entity }
      end
    end
  end

  def next_step
    @step = @step + 1
  end
  # DELETE /ddtanswers/1
  # DELETE /ddtanswers/1.json
  def destroy
    @ddtanswer.destroy
    respond_to do |format|
      format.html { redirect_to $current_task, notice: 'آزمون Delay Discounting با موفقیت حذف شد.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ddtanswer
      @ddtanswer = Ddtanswer.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def ddtanswer_params
      params.require(:ddtanswer).permit(:q1, :q2, :q3, :task_id)
    end
end

class DdtquestionsController < ApplicationController
  load_and_authorize_resource
  before_action :set_ddtquestion, only: [:show, :edit, :update, :destroy]
before_filter :set_task
  # GET /ddtquestions
  # GET /ddtquestions.json
  def index
    @ddtquestions = Ddtquestion.all
  end

  # GET /ddtquestions/1
  # GET /ddtquestions/1.json
  def show
  end

  # GET /ddtquestions/new
  def new
    @ddtquestion = Ddtquestion.new
  end

  # GET /ddtquestions/1/edit
  def edit
  end

  # POST /ddtquestions
  # POST /ddtquestions.json
  def create
    @ddtquestion = Ddtquestion.new(ddtquestion_params)

    respond_to do |format|
      if @ddtquestion.save
        format.html { redirect_to @ddtquestion, notice: 'Ddtquestion was successfully created.' }
        format.json { render :show, status: :created, location: @ddtquestion }
      else
        format.html { render :new }
        format.json { render json: @ddtquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ddtquestions/1
  # PATCH/PUT /ddtquestions/1.json
  def update
    respond_to do |format|
      if @ddtquestion.update(ddtquestion_params)
        format.html { redirect_to @ddtquestion, notice: 'Ddtquestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @ddtquestion }
      else
        format.html { render :edit }
        format.json { render json: @ddtquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ddtquestions/1
  # DELETE /ddtquestions/1.json
  def destroy
    @ddtquestion.destroy
    respond_to do |format|
      format.html { redirect_to ddtquestions_url, notice: 'Ddtquestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ddtquestion
      @ddtquestion = Ddtquestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ddtquestion_params
      params.require(:ddtquestion).permit(:question_type, :value1, :value2, :value3)
    end
end

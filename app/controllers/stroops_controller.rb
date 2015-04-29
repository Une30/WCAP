class StroopsController < ApplicationController
  before_action :set_stroop, only: [:show, :edit, :update, :destroy]

  # GET /stroops
  # GET /stroops.json
  def index
    @stroops = Stroop.all
  end

  # GET /stroops/1
  # GET /stroops/1.json
  def show
  end

  # GET /stroops/new
  def new
    @stroop = Stroop.new
  end

  # GET /stroops/1/edit
  def edit
  end

  # POST /stroops
  # POST /stroops.json
  def create
    @stroop = Stroop.new(stroop_params)

    respond_to do |format|
      if @stroop.save
        format.html { redirect_to @stroop, notice: 'Stroop was successfully created.' }
        format.json { render :show, status: :created, location: @stroop }
      else
        format.html { render :new }
        format.json { render json: @stroop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stroops/1
  # PATCH/PUT /stroops/1.json
  def update
    respond_to do |format|
      if @stroop.update(stroop_params)
        format.html { redirect_to @stroop, notice: 'Stroop was successfully updated.' }
        format.json { render :show, status: :ok, location: @stroop }
      else
        format.html { render :edit }
        format.json { render json: @stroop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stroops/1
  # DELETE /stroops/1.json
  def destroy
    @stroop.destroy
    respond_to do |format|
      format.html { redirect_to stroops_url, notice: 'Stroop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stroop
      @stroop = Stroop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stroop_params
      params.require(:stroop).permit(:task_id, :duration, :before_stimulation, :total_items, :correct_items)
    end
end

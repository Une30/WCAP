class BalloonsController < ApplicationController
  load_and_authorize_resource
  before_action :set_balloon, only: [:show, :edit, :update, :destroy]
  before_filter :set_task
  # GET /balloons
  # GET /balloons.json
  def index
    @balloons = Balloon.all
  end

  # GET /balloons/1
  # GET /balloons/1.json
  def show
  end

  # GET /balloons/new
  def new
    @balloon = Balloon.new
  end

  # GET /balloons/1/edit
  def edit
  end

  # POST /balloons
  # POST /balloons.json
  def create
    @balloon = Balloon.new(balloon_params)

    respond_to do |format|
      if @balloon.save
        format.html { redirect_to @balloon, notice: 'Balloon was successfully created.' }
        format.json { render :show, status: :created, location: @balloon }
      else
        format.html { render :new }
        format.json { render json: @balloon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /balloons/1
  # PATCH/PUT /balloons/1.json
  def update
    respond_to do |format|
      if @balloon.update(balloon_params)
        format.html { redirect_to @balloon, notice: 'Balloon was successfully updated.' }
        format.json { render :show, status: :ok, location: @balloon }
      else
        format.html { render :edit }
        format.json { render json: @balloon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balloons/1
  # DELETE /balloons/1.json
  def destroy
    @balloon.destroy
    respond_to do |format|
      format.html { redirect_to balloons_url, notice: 'Balloon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_balloon
      @balloon = Balloon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def balloon_params
      params.require(:balloon).permit(:bart_id, :pumps, :explosion, :response_time)
    end
end

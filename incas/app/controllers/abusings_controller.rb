class AbusingsController < ApplicationController
  before_action :set_abusing, only: [:show, :edit, :update, :destroy]

  # GET /abusings
  # GET /abusings.json
  def index
    @abusings = Abusing.all
  end

  # GET /abusings/1
  # GET /abusings/1.json
  def show
  end

  # GET /abusings/new
  def new
    @abusing = Abusing.new
  end

  # GET /abusings/1/edit
  def edit
  end

  # POST /abusings
  # POST /abusings.json
  def create
    @abusing = Abusing.new(abusing_params)

    respond_to do |format|
      if @abusing.save
        format.html { redirect_to @abusing.patient}
        format.json { render :show, status: :created, location: @abusing }
      else
        format.html { render :new }
        format.json { render json: @abusing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abusings/1
  # PATCH/PUT /abusings/1.json
  def update
    respond_to do |format|
      if @abusing.update(abusing_params)
        format.html { redirect_to @abusing.patient}
        format.json { render :show, status: :ok, location: @abusing }
      else
        format.html { render :edit }
        format.json { render json: @abusing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abusings/1
  # DELETE /abusings/1.json
  def destroy
    p = @abusing.patient
    @abusing.destroy
    respond_to do |format|
      format.html { redirect_to p}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abusing
      @abusing = Abusing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abusing_params
      params.require(:abusing).permit(:drug_id, :first_use, :total_use, :using_days, :use_code, :patient_id, :comments)
    end
end

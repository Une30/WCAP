class ExaminersController < ApplicationController
  load_and_authorize_resource
  before_action :set_examiner, only: [:show, :edit, :update, :destroy]

  # GET /examiners
  # GET /examiners.json
  def index
    @examiners = Examiner.all
  end

  # GET /examiners/1
  # GET /examiners/1.json
  def show
    if current_user.supervisor and !(@xaminere.clinic.id ==current_user.supervisor.clinic.id)
      redirect_to root_url, :alert => "این عملیات امکان‌پذیر نیست."   
    end
  end

  # GET /examiners/new
  def new
    @examiner = Examiner.new
  end

  # GET /examiners/1/edit
  def edit
    if current_user.supervisor and !(@xaminere.clinic.id ==current_user.supervisor.clinic.id)
      redirect_to root_url, :alert => "این عملیات امکان‌پذیر نیست."   
    end
  end

  # POST /examiners
  # POST /examiners.json
  def create
    @examiner = Examiner.new(examiner_params)
    if current_user.supervisor and !(@examiner.clinic.id ==current_user.supervisor.clinic.id)
      redirect_to root_url, :alert => "این عملیات امکان‌پذیر نیست."   
      return
    end
    respond_to do |format|
      if @examiner.save
        format.html { redirect_to @examiner.clinic, notice: 'Examiner was successfully created.' }
        format.json { render :show, status: :created, location: @examiner }
      else
        format.html { render :new }
        format.json { render json: @examiner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examiners/1
  # PATCH/PUT /examiners/1.json
  def update
    respond_to do |format|
      if @examiner.update(examiner_params)
        format.html { redirect_to @examiner.clinic, notice: 'Examiner was successfully updated.' }
        format.json { render :show, status: :ok, location: @examiner }
      else
        format.html { render :edit }
        format.json { render json: @examiner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examiners/1
  # DELETE /examiners/1.json
  def destroy
    if current_user.supervisor and !(@examiner.clinic.id ==current_user.supervisor.clinic.id)
      redirect_to root_url, :alert => "این عملیات امکان‌پذیر نیست."   
    end
    @clinic = @examiner.clinic
    @examiner.destroy
    respond_to do |format|
      format.html { redirect_to @clinic, notice: 'Examiner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examiner
      @examiner = Examiner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def examiner_params
      params.require(:examiner).permit(:clinic_id, :user_id)
    end
end

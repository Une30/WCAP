class PatientsController < ApplicationController
  load_and_authorize_resource
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
before_filter :set_task
  # GET /patients
  # GET /patients.json
  def index
    if current_user.admin or current_user.manager
      @patients = Patient.all.order("last_name DESC")
    elsif current_user.supervisor
      @patients = Array.new
      @regs = current_user.supervisor.clinic.regs
      @regs.each do |r|  
        @patients << r.patient
      end
    elsif current_user.examiners.size>0
      @patients = Array.new
      @regs = current_user.regs
      @regs.each do |r|  
        @patients<<r.patient
      end
    end
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
    @reg = Reg.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient}
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :file_number, :private_code, :gender, :year_of_birth, :interview_date, :marital_status, :educational_year)
    end
end

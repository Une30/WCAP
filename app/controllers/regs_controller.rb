class RegsController < ApplicationController
  load_and_authorize_resource
  before_action :set_reg, only: [:show, :edit, :update, :destroy]

  # GET /regs
  # GET /regs.json
  def index
    @regs = Reg.all
  end

  # GET /regs/1
  # GET /regs/1.json
  def show
  end

  # GET /regs/new
  def new
    @reg = Reg.new
    @patient = Patient.find_by_id(params[:patient_id])
  end

  # GET /regs/1/edit
  def edit
  end

  # POST /regs
  # POST /regs.json
  def create
    
    @reg = Reg.new(reg_params)
    @patient = @reg.patient
    if @patient
      @reg.clinic=current_user.supervisor.clinic
    else
      @patient = Patient.new
      @patient.first_name = params[:first_name]
      @patient.last_name = params[:last_name]
      
      @patient.save
      @reg.patient = @patient      
      @reg.user = current_user
    end
    if (current_user.admin or current_user.manager) and !(Clinic.has_user(@reg.user,@reg.clinic.id) and Clinic.has_patient(@reg.patient,@reg.clinic.id))
      redirect_to root_url, :alert => "آزمون‌گیرنده یا آزمودنی، عضو این کلینیک نیستند."
      return
    end

    if current_user.supervisor and !(@reg.clinic.id == current_user.supervisor.clinic.id and Clinic.has_user(@reg.user,@reg.clinic.id) and Clinic.has_patient(@reg.patient,@reg.clinic.id) )
      redirect_to root_url, :alert => "این عملیات امکان‌پذیر نیست."
      return
    end


    if current_user.examiners.size>0 and !(@reg.user == current_user and User.has_clinic(@reg.clinic,current_user))
      redirect_to root_url, :alert => "این عملیات امکان‌پذیر نیست."
      return
    end


    respond_to do |format|
      if @reg.save

        format.html { redirect_to edit_patient_path(@patient)}
        format.json { render :show, status: :created, location: @reg }
      else
        format.html { render :new }
        format.json { render json: @reg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regs/1
  # PATCH/PUT /regs/1.json
  def update
    if current_user.examiners.size>0 and !(@reg.user == current_user and User.has_clinic(@reg.clinic,current_user))
      redirect_to root_url, :alert => "این عملیات امکان‌پذیر نیست."
      return
    end
    respond_to do |format|
      if @reg.update(reg_params)
        format.html { redirect_to @reg}
        format.json { render :show, status: :ok, location: @reg }
      else
        format.html { render :edit }
        format.json { render json: @reg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regs/1
  # DELETE /regs/1.json
  def destroy
    @clinic = @reg.clinic
    @reg.destroy
    respond_to do |format|
      format.html { redirect_to @clinic}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reg
      @reg = Reg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reg_params
      params.require(:reg).permit(:clinic_id, :user_id, :patient_id)
    end
end

class TasksController < ApplicationController
  load_and_authorize_resource
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    if current_user.admin or current_user.manager
      @tasks = Task.all.order("clinic_id DESC")
    elsif current_user.supervisor
      @tasks = Task.find_by_clinic_id(current_user.supervisor.clinic.id)
    elsif current_user.examiners.size>0
      @tasks = current_user.tasks.order("clinic_id DESC")
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show

  end

  # GET /tasks/new
  def new
    @task = Task.new
    @task.patient_id =  params[:patient_id]
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create

    @task = Task.new(task_params)
    @task.user = current_user
    if (current_user.admin or current_user.manager) and !User.has_patient(@task.patient, @task.clinic, @task.user) 
      redirect_to root_url, :alert => "این عملیات مجاز نیست."
      return
    end

    if current_user.supervisor and !(@task.clinic.id == current_user.supervisor.clinic.id)
      redirect_to root_url, :alert => "این عملیات مجاز نیست."
      return 
    end     


    if current_user.examiners.size>0 and !(User.has_patient(@task.patient, @task.clinic,current_user)) 
      redirect_to root_url, :alert => "این عملیات مجاز نیست."
      return
    end

    respond_to do |format|
      if @task.save
        $current_task = @task
        format.html { redirect_to @task}
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        $current_task = @task
        format.html { redirect_to @task}
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:user_id, :patient_id, :clinic_id, :confirmed)
    end
end

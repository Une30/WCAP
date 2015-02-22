class RectanglesController < ApplicationController
  load_and_authorize_resource
  before_action :set_rectangle, only: [:show, :edit, :update, :destroy]
before_filter :set_task
  # GET /rectangles
  # GET /rectangles.json
  def index
    @rectangles = Rectangle.all
  end

  # GET /rectangles/1
  # GET /rectangles/1.json
  def show
  end

  # GET /rectangles/new
  def new
    @rectangle = Rectangle.new
  end

  # GET /rectangles/1/edit
  def edit
  end

  # POST /rectangles
  # POST /rectangles.json
  def create
    @rectangle = Rectangle.new(rectangle_params)
    @rectangle.reaction_time = @rectangle.response_time - @rectangle.display_time
    respond_to do |format|
      if @rectangle.save
        format.html { redirect_to @rectangle, notice: 'Rectangle was successfully created.' }
        format.json { render :show, status: :created, location: @rectangle }
      else
        format.html { render :new }
        format.json { render json: @rectangle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rectangles/1
  # PATCH/PUT /rectangles/1.json
  def update
    respond_to do |format|
      if @rectangle.update(rectangle_params)
        format.html { redirect_to @rectangle, notice: 'Rectangle was successfully updated.' }
        format.json { render :show, status: :ok, location: @rectangle }
      else
        format.html { render :edit }
        format.json { render json: @rectangle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rectangles/1
  # DELETE /rectangles/1.json
  def destroy
    @rectangle.destroy
    respond_to do |format|
      format.html { redirect_to rectangles_url, notice: 'Rectangle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rectangle
      @rectangle = Rectangle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rectangle_params
      params.require(:rectangle).permit(:gonogo_id, :state, :is_clicked, :display_time, :response_time, :reaction_time)
    end
end

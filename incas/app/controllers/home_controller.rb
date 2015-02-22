class HomeController < ApplicationController
before_filter :set_task
  def index
  end

  def search
    #@patients = Patient.find(:all, :conditions => ['description like ?', "%#{params[:q]}%"])
    @patients = Patient.where("last_name LIKE ?", "%#{params[:q]}%")

  end

end

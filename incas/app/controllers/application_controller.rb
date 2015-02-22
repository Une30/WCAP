class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
 # before_filter :set_task
 before_action :require_profile
 before_action :configure_devise_permitted_parameters, if: :devise_controller?
 
  protected

  def configure_devise_permitted_parameters
    registration_params = [:email, :password, :password_confirmation]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(registration_params) 
      }
    end
  end

private
  def set_task
  	if current_user
    	$current_task = current_user.tasks.last
    else
    	$current_task = current_user
    end
  end


 def require_profile

    if !current_user.blank?
      if current_user.email == "maryam.younesi00@gmail.com" and current_user.profile.blank?
        @profile = Profile.new()
        @profile.user = current_user
        @profile.save
        current_user.admin = true
        current_user.save
      elsif current_user.email == "manager@gmail.com" and current_user.profile.blank?
        @profile = Profile.new()
        @profile.user = current_user
        @profile.save

        current_user.manager = true
        current_user.save
      elsif current_user.profile.blank?
        @profile = Profile.new();
        @profile.save
        current_user.profile = @profile
      end

      #redirect_to profile_path(current_user.profile.id);
    end
  end


protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

    before_filter do
    resource = controller_path.singularize.gsub('/', '_').to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end
end


class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_subjects

  private

  def set_subjects
    @subjects = Subject.all
  end
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar]) 
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar]) 
  end
end
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  helper_method :current_pet




  private
  
  def record_not_found
    flash[:error] = "Not Found"
    redirect_to pets_path
  end

  def current_pet
    # @pet ||= Pet.find(params[:id])
    Pet.find(params[:id])
  end



  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end

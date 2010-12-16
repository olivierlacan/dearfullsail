class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = exception.message
    redirect_to root_url
  end
  
  # helping out CanCan recognize my users (students)
  def current_ability
    @current_ability ||= Ability.new(current_student)
  end
end

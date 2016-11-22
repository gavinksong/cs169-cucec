class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def after_sign_in_path_for(resource)
    if student_signed_in?
      return students_path
    end
    if mentor_signed_in?
      return mentors_path
    end
    if admin_signed_in?
      return admins_path
    end
    #admin redirect to come in here as well
  end
  
  # def current_user
  #   @current_user ||= (warden.authenticate(scope: :student) || nil)
  # end



end
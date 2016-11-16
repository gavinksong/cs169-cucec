class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # use for current_mentor and current_student
  include Devise::Controllers::Helpers

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
<<<<<<< 50673207b41ba3026dcef07b529f61a3069850aa
  
  def current_user
    @current_user ||= (warden.authenticate(scope: :student) || nil)
  end
=======

  # for model-agnostic features like chat
  def current_user
    @current_user = current_mentor || current_student
  end

>>>>>>> Auth
end
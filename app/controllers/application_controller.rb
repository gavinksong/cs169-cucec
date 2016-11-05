class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    if student_signed_in?
      return students_path
    end
    if mentor_signed_in?
      return mentors_path
    end
    #admin redirect to come in here as well
  end
end
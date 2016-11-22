module SessionsHelper
  include Devise::Controllers::Helpers

  # for model-agnostic features like chat
  def current_user
    @current_user = current_mentor || current_student
  end


end
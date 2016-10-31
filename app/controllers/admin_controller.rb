class AdminController < ApplicationController
  before_filter :authenticate_admin!
  before_filter :ensure_admin!

  private

  def ensure_admin!
    unless current_mentor.admin?
      sign_out current_mentor

      redirect_to root_path

      return false
    end
  end
  
  
end

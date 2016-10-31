class MentorsController < ApplicationController
  before_action :authenticate_mentor!
  before_action :admin_only, :except => :show

  def index
    @users = Student.all
    if current_mentor.admin?
        render 'admin_page'
    end
  end

  def show
  end

  def update
  end

  def destroy
  end


  private

  def admin_only
    unless current_mentor.admin?
      redirect_to mentors_path, :alert => "Access denied."
    end
  end

  def secure_params
    params.require(:mentor).permit(:role)
  end

end
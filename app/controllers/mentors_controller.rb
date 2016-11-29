class MentorsController < ApplicationController
  before_action :authenticate_mentor!, except: :destroy 
  before_action :authenticate_admin!, only: :destroy

  def available
    current_mentor.update_availability(params[:value])
  end
  
  def destroy
    mentor = Mentor.find(params[:id])
    mentor.destroy
    redirect_to :back
  end
end

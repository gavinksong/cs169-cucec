class MentorsController < ApplicationController
  before_action :authenticate_mentor!

  def available
    current_mentor.update_availability(params[:emilio])
  end
end

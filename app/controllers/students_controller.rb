class StudentsController < ApplicationController
  before_action :authenticate_student!
  
  def createwriting
    writing_sample = params[:student_writing]["essay"]
    #Writing.new(:student_id => params[:student_id], :writing_sample => writing_sample)
    flash[:notice] = "upload successful"
    redirect_to students_path
  end
end

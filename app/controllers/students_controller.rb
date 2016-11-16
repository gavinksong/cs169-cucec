class StudentsController < ApplicationController
  before_action :authenticate_student!
  
  def createwriting
    writing_sample = params[:student_writing]["essay"]
    Writing.create(:student_id => current_user[:id], :sample => writing_sample)
    flash[:notice] = "upload successful"
    redirect_to students_path
  end
  
  def read
    @read_english = Resource.read_english
    @read_chinese = Resource.read_chinese
  end
end

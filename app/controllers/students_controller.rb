class StudentsController < ApplicationController
  before_action :authenticate_student!

  # TODO: A Rubyist would refactor this method's name to create_writing
  def createwriting
    writing_sample = params[:student_writing]["essay"]
    Writing.create(:student_id => current_user[:id], :sample => writing_sample)
    flash[:success] = "upload successful"
    redirect_to students_path
  end
  
  def read
    @read_english = Resource.read_english
    @read_chinese = Resource.read_chinese
  end
  
  def listen
    @listen = Resource.listen
  end
  
  def watch
    @watch = Resource.watch
  end
end

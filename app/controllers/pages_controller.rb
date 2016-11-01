class PagesController < ApplicationController
  def listen
    @student = Student.find(params[:id])
  end
end

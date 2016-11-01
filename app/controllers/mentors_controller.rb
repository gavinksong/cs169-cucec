class MentorsController < ApplicationController
  before_action :authenticate_mentor!

  def index
    @users = Student.all
  end

  def show
  end

  def update
  end

  def destroy
  end

end
class StudentsController < ApplicationController
  before_action :authenticate_student!
end

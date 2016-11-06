class StudentsController < ApplicationController
  before_action :authenticate_admin!
end

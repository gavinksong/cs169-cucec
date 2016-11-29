class AdminsController < ApplicationController
    before_action :authenticate_admin!
    
    def index
        @students = Student.all
        @mentors = Mentor.all
    end
end

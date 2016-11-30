class AdminsController < ApplicationController
    before_action :authenticate_admin!
    
    def index
        @students = Student.all
        
        @sorting = params[:sort]
        if @sorting == "online"
            @mentors = Mentor.mentors_available_chat
        else
            @mentors = Mentor.all
        end
    end
end

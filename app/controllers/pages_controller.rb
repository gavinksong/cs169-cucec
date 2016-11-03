class PagesController < ApplicationController
    before_action :redirect_to_navigation
    
    def redirect_to_navigation
        if current_mentor
            redirect_to '/mentors/index'
        end
    end
end

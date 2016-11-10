class MentorsController < ApplicationController
  before_action :authenticate_mentor!

  private
    # def authenticate_mentor!
    #   # TODO: Sign in mentor if authentication succeeds
    #   if false
    #     flash[:error] = 'Failed to authenticate mentor'
    #     redirect_to '/'
    #   end
    # end

end

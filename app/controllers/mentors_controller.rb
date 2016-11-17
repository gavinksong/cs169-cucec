class MentorsController < ApplicationController
  before_action :authenticate_mentor!
end

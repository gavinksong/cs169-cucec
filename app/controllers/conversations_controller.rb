class ConversationsController < ApplicationController

  def index
    # TODO: Find all conversations created by user
    if student_signed_in?
      @conversations = current_user.conversations
    else
      flash[:info] = 'Please sign in'
      redirect_to new_student_session_path
    end
  end

  def new
  end

  def create
    @conversation = Conversation.new

    # create associations
    @conversation.create_student(id: current_user.id)
    @conversation.create_mentor(id: Mentor.first.id) # will replace with active mentor later
    @conversation.save!

    # reloads the page
    redirect_to :back
  end

  def show
    @conversation = Conversation.find_by(slug: params[:slug])
    @message = Message.new
  end

  def edit
  end

end

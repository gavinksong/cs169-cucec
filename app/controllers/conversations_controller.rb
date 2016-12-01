class ConversationsController < ApplicationController
  def index
    if current_user
      @conversations = current_user.conversations
    else
      flash[:info] = 'Please sign in'
      redirect_to new_student_session_path
    end
  end

  def new
  end
  def create
    conversation = Conversation.new
    conversation.create_student(id: current_user.id)
    # TODO: Match to random, active mentor instead of first mentor
    conversation.create_mentor(id: Mentor.first.id)
    conversation.save!

    # reloads the page
    redirect_to :back
  end
  
  def show
    @conversation = Conversation.find_by(id: params[:slug])
    @messages = @conversation.messages
    @message = Message.new
  end

end

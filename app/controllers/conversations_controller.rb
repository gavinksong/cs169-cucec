class ConversationsController < ApplicationController
  before_action :authenticate_student!
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
    conversation.create_student(id: current_student.id)
    if Mentor.mentor_available_chat?
      conversation.create_mentor(id: Mentor.first_mentor_available_chat.id)
      conversation.save!
      redirect_to conversation_path(conversation.id)
    else
      flash[:danger] = "Mentor is not available at the moment"
      redirect_to :back
    end
  end

  def show
    @conversation = Conversation.find_by(id: params[:slug])
    @messages = @conversation.messages
    @message = Message.new
  end

end

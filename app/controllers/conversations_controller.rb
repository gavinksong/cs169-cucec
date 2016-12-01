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
    if current_user.instance_of? Mentor
      flash[:danger] = "A student will initiate conversation."
    else 
      if Mentor.mentor_available_chat?
        mentor = Mentor.first_mentor_available_chat
        prev_convos = Conversation.where(:student_id => current_student.id, :mentor_id => mentor.id).size
        if prev_convos != 0
          conversation = Conversation.new
          conversation.create_student(id: current_student.id)
          conversation.create_mentor(id: mentor.id)
          conversation.save!
          flash[:success] = "Congradulations! You have been paird with #{mentor.email}"
        else
          flash[:info] = "You have an existing chat with #{mentor.email}"
        end
      else
        flash[:danger] = "Mentor is not available at the moment"
      end
    end
    redirect_to :back
  end

  def show
    @conversation = Conversation.find_by(id: params[:slug])
    @messages = @conversation.messages
    @message = Message.new
  end

end

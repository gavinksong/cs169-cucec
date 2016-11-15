class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def create
    message = Message.new(message_params)
    # message.student_or_mentor = current_user
    if message.save
      # display in realtime
    else
      redirect_to conversations_path
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :conversation_id)
    end
end


class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    message.conversation = Conversation.find(message_params[:conversation_id])
    message.author = current_user

    if message.save
      ActionCable.server.broadcast 'messages',
          message: message.content,
          user: current_user.email
      head :ok
    else
      flash[:danger] = 'Message did not save'
      redirect_to conversations_path
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :conversation_id)
    end
end


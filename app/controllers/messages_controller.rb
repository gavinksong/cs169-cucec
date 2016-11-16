class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def create
    message = Message.new(message_params)
    message.create_conversation(id: message_params[:conversation_id])
    message.create_author(id: current_user.id)

    # remove exclamation in production
    if message.save!
      ActionCable.server.broadcast 'messages',
          message: message.content,
          user: current_user.email
      head :ok
    else
      flash[:error] = 'Message did not save'
      redirect_to conversations_path
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :conversation_id)
    end
end


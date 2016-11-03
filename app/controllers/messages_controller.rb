class MessagesController < ApplicationController
  before_action do
    @converstaion =
    Conversation.find(params[:conversation_id])
    end

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
  end


  # POST /messages
  # POST /messages.json
  def create
    @message = @conversation.messages.new(message_params)
    #TODO:
  end

  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:body, :conversation_id, :mentor_id, :student_id, :read)
    end
end

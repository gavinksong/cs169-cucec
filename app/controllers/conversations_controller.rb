class ConversationsController < ApplicationController

  def index
    # TODO: Find all conversations created by user
    @conversation = nil
  end

  def new
    @conversation = Conversation.new
  end

  def show
    @conversation = Conversation.find_by(slug: params[:slug])
    @message = Message.new
  end

end

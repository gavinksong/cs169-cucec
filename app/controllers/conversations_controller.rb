class ConversationsController < ApplicationController
  before_action :set_conversation, only: [:show, :edit, :update, :destroy]

  # GET /conversations
  # GET /conversations.json
  def index
    @conversations = Conversation.all
  end

  def new
    @conversation = Conversation.new
  end

  def show
    @conversation = Conversation.find_by(slug: params[:slug])
    @message = Message.new
  end

  # @deprecated Function
  #
  # def create
  #   #TODO: clear this shit
  #   @conversation = Conversation.new(conversation_params)
  #
  #   respond_to do |format|
  #     if @conversation.save
  #       format.html { redirect_to @conversation, notice: 'Conversation was successfully created.' }
  #       format.json { render :show, status: :created, location: @conversation }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @conversation.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def conversation_params
      params.require(:conversation).permit(:student_id, :mentor_id)
    end
end

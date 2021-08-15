class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
    @messages = Message.order("created_at DESC")
  end

  def create
    @message = Message.new(content_params)
     if@message.save
      redirect_to messages_path
     else
      render :index
     end
  end

  def destroy
    messages = message.find(params[:id])
    message.content.destroy
    redirect_to root_path
  end

  private
  def content_params
    params.require(:message).permit(:text, :image).merge(user_id: current_user.id)
  end

end

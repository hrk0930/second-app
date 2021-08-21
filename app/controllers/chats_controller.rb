class ChatsController < ApplicationController
  def index
    @chat = Chat.new
    @chat = Chat.all
    @chat = Chat.order("created_at DESC")
  end

  def create
    @chat = Chat.new(content_params)
     if@chat.save
      redirect_to chats_path
     else
      render :index
     end
  end

  def destroy
    chats = chat.find(params[:id])
    chat.text.destroy
    redirect_to chats_path
  end

  private
  def content_params
    params.require(:chat).permit(:text, :image).merge(user_id: current_user.id)
  end

end

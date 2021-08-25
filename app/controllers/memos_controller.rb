class MemosController < ApplicationController
  def index
    @memo = Memo.new
    @memos = Memo.all
    @memos = Memo.order("created_at DESC")
  end

  def create
    @memo = Memo.new(text_params)
     if@memo.save
      redirect_to  memos_path 
     else
      render :index
     end
  end

  def destroy
    memos = Memo.find(params[:id])
    memo.destroy
    redirect_to chats_path
  end


  private
  def text_params
    params.require(:memo).permit(:text, :image).merge(user_id: current_user.id)
  end

end


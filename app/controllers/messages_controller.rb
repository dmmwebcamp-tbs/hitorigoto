class MessagesController < ApplicationController

# ユーザーサイド

  def new
  	@message = Message.new
  end

  def create
  	@message = Message.new(message_params)
    @message.user_id = current_user.id
  	@message.save
  	flash[:notice] = "Message was successfully sent."
  	redirect_to top_path
  end


# 管理人サイド

  def index
     @messages =Message.all.order(updated_at: :asc)
     render layout: false
  end

  def show
    @message = Message.find_by_id(params[:id])
    @user = User.find_by_id(params[:id])
    render layout: false
  end

  def search
    #Viewのformで取得したパラメータをモデルに渡す
    @message = Message.search(params[:search])
  end


  	private
		def message_params
			params.require(:message).permit(:title, :body)
		end


end

class MessagesController < ApplicationController

# ユーザーサイド

  def new
  	@message = Message.new
  end

  def create
  	@message = Message.new(message_params)
  	@message.save
  	flash[:notice] = "Message was successfully sent."
  	redirect_to top_path
  end


# 管理人サイド

  def index
    render :layout => nil
     @messages =Message.all.order(updated_at: :asc)
  end

  def show
    render :layout => nil
    @message = message.find(params[:id])
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

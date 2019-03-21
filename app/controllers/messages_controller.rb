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
  end

  def show
  end

  	private
		def message_params
			params.require(:message).permit(:title, :body)
		end

end

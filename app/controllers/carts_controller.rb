class CartsController < ApplicationController

    # そこで行われる処理はログインユーザーによってのみ実行可能。
	before_action :authenticate_user!
	# 正しいユーザを要求する。
    def create
    end

    def index
    	# current_user、ユーザと紐づける?
    	@product = current_user

    	# Product.allだと全て引っ張ってきてしまう。
    	@products = Product.all
    end

    def update
    end

    def destroy
    end


    private
    def product_params
  		params.require(:product).permit(:cd_name, :price, :quantity)
    end

end

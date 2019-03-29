class CartProductsController < ApplicationController

    # そこで行われる処理はログインユーザーによってのみ実行可能。
	# before_action :authenticate_user!
	# 正しいユーザを要求する。
    def create
        # binding.pry
        @product = CartProduct.new(cart_params)
    end

    def index
    	# current_user、ユーザと紐づける?
    	@product = current_user
    	@cart_products = current_user.cart_products
    end

    def update
    end

    def destroy
    end


    private
    def cart_params
  		 params.require(:cart_product).permit(:product_id,
                                              :user_id,
                                              :quantity,
                                              :cart_id)
    end

end

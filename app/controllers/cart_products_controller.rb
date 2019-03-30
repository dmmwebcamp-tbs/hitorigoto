class CartProductsController < ApplicationController

    # そこで行われる処理はログインユーザーによってのみ実行可能。
	# before_action :authenticate_user!
	# 正しいユーザを要求する。
    def create
        # binding.pry
        @product = CartProduct.new(cart_params)
        @product.save
        redirect_to carts_path
    end

    def index
    	# current_user、ユーザと紐づける?
    	@product = current_user
    	@cart_products = CartProduct.all
    end

    def update
    end

    def destroy
        @cart_products = CartProduct.find(params[:id])
        @cart_products.destroy
        redirect_to carts_path
    end


    private
    def cart_params
  		 params.require(:cart_product).permit(:product_id,
                                              :user_id,
                                              :quantity,
                                              :cart_id)
    end

end

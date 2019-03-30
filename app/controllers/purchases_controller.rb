class PurchasesController < ApplicationController

	def account
		@purchases = Purchase.new
		# binding.pry
        # カート内確認ページで生成されたIDを持ってくる。
        #  指定したユーザのカート内情報を持ってくる。
        @cart_products = current_user.cart_products
	end

	def confirm
	end

	def create
	end


	private
    def Product_params
        params.require(:product).permit(:cd_name, :price, :quantity)
    end

end

class PurchasesController < ApplicationController

	def account
		@purchases = Purchase.new
        # カート内確認ページで生成されたIDを持ってくる。

        @products = Purchase.all
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

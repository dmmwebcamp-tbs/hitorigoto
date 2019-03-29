class PurchasesController < ApplicationController

	def account
		@purchases = Purchase.new
		# binding.pry
        # カート内確認ページで生成されたIDを持ってくる。
        # @products = current_user.all
        @products = Product.find(params[:id])
	end

	def confirm
	end

	def create
	end

	def update
		purchase =Purchase.find(params[:id])
		purchase.update(purchase_params)
	end


	private
    def Product_params
        params.require(:product).permit(:cd_name, :price, :quantity)
    end

     def Purchase_params
        params.require(:purchase).permit(:delivery_status)
    end

end

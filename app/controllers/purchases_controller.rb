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


  	def all_delivery_update
		@purchase= Purchase.find(params[:id])
		if @purchase.update(purchase_params)
			flash[:success] = "配送状況を変更しました"
			redirect_to all_delivery_path
		end
	end

	def all_history_update
		@purchase= Purchase.find(params[:id])
		if @purchase.update(purchase_params)
			flash[:success] = "配送状況を変更しました"
			redirect_to all_history_path
		end
	end


	private
    def product_params
        params.require(:product).permit(:cd_name, :price, :quantity)
    end

     def purchase_params
        params.require(:purchase).permit(:delivery_status)
    end

end

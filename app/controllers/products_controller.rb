class ProductsController < ApplicationController

    def index
    	@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
		@artists = @product.cd_musics
		@musics = @product.cd_musics
		@payment = Product.new
	end


    # データの保存をする時にストロングパラメータを定義する。
    # 'form_for'とセットになる。

end

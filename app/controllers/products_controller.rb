class ProductsController < ApplicationController

# 管理人側

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    flash[:notice] = "Product was successfully created."
    redirect_to cdposts_path
  end

 def edit
    @product = Product.find(params[:id])
    render layout: false
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    flash[:notice] = "Product was successfully updated."
    redirect_to cdposts_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product was successfully destroyed."
    redirect_to cdposts_path
  end



# ユーザ側


  def index
    @products = Product.all
	end

  def show
		@products = CartProduct.new
    @product = Product.find(params[:id])
    @artists = @product.cd_musics
    @musics = @product.cd_musics
	end

    # データの保存をする時にストロングパラメータを定義する。
    # 'form_for'とセットになる。
    private
    def product_params
      params.require(:product).permit(:cd_genre_id, :cd_label_id, :cd_type, :cd_name, :cd_artist_id, :owner_comment, :image, :price, :saled_date, :stock_number)
    end


end

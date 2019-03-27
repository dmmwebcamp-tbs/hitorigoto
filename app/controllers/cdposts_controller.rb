class CdpostsController < ApplicationController
  def index
    @products = Product.all
    render layout: false
  end

  def new
    @product = Product.new
    render layout: false
  end

  def create
    @product = Product.new(product_params)
    @product.save
    flash[:notice] = "Product was successfully created."
    redirect_to new_cdpost_path
  end

 def edit
    @product = Product.find(params[:id])
    render layout: false
  end

 def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product was successfully destroyed."
    redirect_to products_path
  end

    private
    def product_params
      params.require(:product).permit(:cd_genre_id, :cd_label_id, :cd_type, :cd_name, :artist_name, :owner_comment, :image_id, :price, :saled_date, :stock_number)
    end

end

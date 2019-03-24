class CdpostsController < ApplicationController
  def index
    render layout: false
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    flash[:notice] = "Message was successfully created."
    redirect_to top_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

    private
    def product_params
      params.require(:product).permit(:cd_genre_id, :cd_label_id, :cd_type, :cd_name, :owner_comment, :image_id, :price, :saled_date, :stock_number)
    end

end

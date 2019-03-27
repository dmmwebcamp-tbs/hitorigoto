class CdpostsController < ApplicationController
  def index
    @products = Product.all
    render layout: false
  end

  def new
    @product = Product.new
    @cd_music = @product.cd_musics.build
    render layout: false
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

    private
    def product_params
      params.require(:product).permit(:cd_genre_id, :cd_label_id,  :cd_artist_id, :cd_type, :cd_name, :artist_name, :owner_comment, :image, :price, :saled_date, :stock_number, cd_musics_attributes: [:id, :music_name, :product_id, :disc_number, :track_number, :_destroy])
    end

end

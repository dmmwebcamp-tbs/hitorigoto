class CdArtistsController < ApplicationController
def new

  end

  def create
    @cd_artist = CdArtist.new(cd_artist_params)
    @cd_artist.save
    flash[:notice] = "Artist was successfully created."
    redirect_to cd_artists_path
  end

  def index
    @cd_artist = CdArtist.new
    @cd_artists = CdArtist.all
    render layout: false
  end

  def show
  end

  def edit
    @cd_artist = CdArtist.find(params[:id])
    render layout: false
  end

  def update
    cd_artist = CdArtist.find(params[:id])
    cd_artist.update(cd_artist_params)
    flash[:notice] = "Artist was successfully updated."
    redirect_to cd_artists_path

  end

  def destroy
    @cd_artist = CdArtist.find(params[:id])
    @cd_artist.destroy
    flash[:notice] = "Artist was successfully destroyed."
    redirect_to cd_artists_path
  end

   private
    def cd_artist_params
      params.require(:cd_artist).permit(:artist_name, :cd_category)
    end
end

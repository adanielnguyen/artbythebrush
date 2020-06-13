class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
    @favourite = Favourite.new
    @like = Like.new
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    # @artwork.user_id = current_user.id
    @artwork.user = current_user
    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render "new"
    end

  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
    @artwork.update(artwork_update_params)

    redirect_to artwork_path
  end

  private

  def artwork_update_params
    params.require(:artwork).permit(:name, :description, :genre, :medium, :date_created, images: [])
  end

  def artwork_params
    params.require(:artwork).permit(:name, :description, :genre, :medium, :date_created, images: [])
  end

end

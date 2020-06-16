class ArtworksController < ApplicationController
  before_action :set_artwork, only: %i[show edit update]

  def index
    @artworks = Artwork.all
  end

  def show
    @favourite = Favourite.new
    @like = Like.new
    @artworks = Artwork.all
    #@displayotherartwork = Artwork.all.select { |artwork| artwork}
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
  end

  def update
    @artwork.update(artwork_update_params)

    redirect_to artwork_path
  end

  private

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end

  def artwork_update_params
    params.require(:artwork).permit(:name, :description, :genre, :medium, :date_created, images: [])
  end

  def artwork_params
    params.require(:artwork).permit(:name, :description, :genre, :medium, :date_created, images: [])
  end

end

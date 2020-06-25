class ArtworksController < ApplicationController
  before_action :set_artwork, only: %i[show edit update]

  def tagged
    if params[:tag].present?
      @artworks = Artwork.tagged_with(params[:tag])
    else
      @artworks = Artwork.all
    end
  end
  
  def show
    @favourite = Favourite.new
    @like = Like.new
   
    @related_artworks = @artwork.find_related_tags
    @collections = current_user.collections
    @artwork = Artwork.find(params[:id])
    @artist = @artwork.user
    @artworks =  Artwork.all.select {|artwork| artwork.user == @artist}
  
  
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
    params.require(:artwork).permit(:name, :description, :genre, :medium, :date_created, images: [], tag_list: [])
  end

  def artwork_params
    params.require(:artwork).permit(:name, :description, :genre, :medium, :date_created, images: [], tag_list: [])
  end

end

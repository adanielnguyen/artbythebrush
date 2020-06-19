class CollectionFavouritesController < ApplicationController
  before_action :set_collection, only: %i[create]
  before_action :set_artwork, only: %i[create]

  def create
    @collection_favourite = CollectionFavourite.new
    @collection_favourite.collection =  @collection
    @favourite = current_user.favourites.find_by(artwork_id: params[:artwork_id]) || Favourite.create(user: current_user, artwork: @artwork)
    @collection_favourite.favourite = @favourite

    if @collection_favourite.save 
      redirect_to request.referrer
    else
      render "new"
    end
  end

  private

  def set_collection
    @collection = Collection.find(params[:collection_id])
  end

  def set_artwork
    @artwork = Artwork.find(params[:artwork_id])
  end
end

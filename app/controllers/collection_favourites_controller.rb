class CollectionFavouritesController < ApplicationController
  def create
    @collection_favourite = CollectionFavourite.new
    @collection = Collection.find(params[:collection_id])
    @collection_favourite.collection =  @collection
    @artwork = Artwork.find(params[:artwork_id])
    @favourite = current_user.favourites.find_by(artwork_id: params[:artwork_id]) || Favourite.create(user: current_user, artwork: @artwork)
    @collection_favourite.favourite = @favourite

    if @collection_favourite.save 
      redirect_to request.referrer
    else
      render "new"
    end
  end

  
end

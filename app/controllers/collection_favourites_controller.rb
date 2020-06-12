class CollectionFavouritesController < ApplicationController
  def create
    @collection_favourite = CollectionFavourites.new
    @collection = Collection.find(params[:collection_id])
    @collection_favourite.collection =  @collection
    @favourite = Favourite.find(params[:favourite_id])

    if @collection_favourite.save 
      redirect_to favourite_collections_path
    else
      render "new"
    end
  end
end

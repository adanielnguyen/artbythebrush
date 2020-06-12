class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])
    @artworks = Artworks.find(params[:id])
    @favourites = Favourites.find(params[:id])
  end

  def new
    @collection = Collection.new
  end

  def create
    
    @collection = Collection.new(collection_params)
    @collection.user = current_user

    if @collection.save
      redirect_to collections_path(@collection)
    else
      render "new"
    end
  end

  def update
    @collection = Collection.find(params[:id])
    @collection.update(collection_params)

    redirect_to collection_path
  end

  def edit
  @collection = Collection.find(params[:id])
  end


  private

  def collection_params
    params.require(:collection).permit(:name, :artwork_id)
  end
end

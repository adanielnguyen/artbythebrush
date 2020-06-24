class CollectionsController < ApplicationController
  before_action :set_collection, only: %i[show windowshow update edit]
  
  def index
    @collections = current_user.collections
  end

  def show
    @artworks = @collection.artworks
  end

  def windowshow
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
    @collection.update(collection_params)

    redirect_to collection_path
  end

  def edit
  end


  private

  def set_collection
    @collection = Collection.find(params[:id])
  end

  def collection_params
    params.require(:collection).permit(:name, :artwork_id)
  end
end

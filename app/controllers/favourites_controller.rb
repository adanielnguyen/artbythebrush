class FavouritesController < ApplicationController
  before_action :set_favourite, only %i[destroy]
  before_action :set_artwork, only %i[create]

  def index
    @favourites = Favourite.where("artwork_id = ?", current_user.id)
    @favourites = Favourite.all.select {|favourite| favourite.artwork}
  end
  
  def create
    @favourite = Favourite.new
    @favourite.user = current_user
    @favourite.artwork = @artwork

    if @favourite.save
      redirect_to request.referrer
    else
      render 'home'
    end
  end

  def destroy
    @favourite.destroy
    # no need for app/views/favourites/destroy.html.erb
    redirect_to root_path
  end

  private
  def set_favourite
    @favourite = Favourite.find(params[:id])
  end

  def set_artwork
    @artwork = Artwork.find(params[:artwork_id])
  end
end



class FavouritesController < ApplicationController
  def create
    @favourite = Favourite.new
    @artwork = Artwork.find(params[:artwork_id])
    @favourite.user = current_user
    @favourite.artwork = @artwork

    if @favourite.save
      redirect_to request.referrer
    else
      render 'home'
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy

    # no need for app/views/favourites/destroy.html.erb
    redirect_to root_path
  end
end



class PagesController < ApplicationController
  def home
    @artworks = Artwork.all
    @favourite = Favourite.new
  end

  def profile
    @artist = User.find(params[:id])
    @follow = Follow.new
  end
end

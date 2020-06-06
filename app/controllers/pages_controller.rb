class PagesController < ApplicationController
  def home
    @artworks = Artwork.all
  end

  def profile
    @artist = User.find(params[:id])
    @follow = Follow.new
  end
end

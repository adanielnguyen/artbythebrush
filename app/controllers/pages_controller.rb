class PagesController < ApplicationController
  def home
    @artworks = Artwork.all
    @favourite = Favourite.new
    @collections = current_user.collections
    @like = Like.new
  end

  def profile
    @artist = User.find(params[:id])
    @artworks = Artwork.all.select {|artwork| artwork.user == current_user}
    @follow = Follow.new
    @favourite = Favourite.new
    @like = Like.new
  end



end

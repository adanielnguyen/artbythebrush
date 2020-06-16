class PagesController < ApplicationController
  before_action :set_user, only: %i[profile]

  def home
    @artworks = Artwork.all
    @favourite = Favourite.new
    @collections = current_user.collections || []
    @like = Like.new
  end

  def profile
    @artworks = Artwork.all.select {|artwork| artwork.user == current_user}
    @follow = Follow.new
    @favourite = Favourite.new
    @like = Like.new
  end

  def set_user
    @artist = User.find(params[:id])
  end

end

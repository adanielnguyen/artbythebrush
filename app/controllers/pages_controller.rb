class PagesController < ApplicationController
  before_action :set_user, only: %i[profile]

  def home
    if params[:tag].present?
      @artworks = Artwork.tagged_with(params[:tag])
      @banner = false
    elsif params[:query].present?
      @artworks = Artwork.where("name ILIKE ?", "%#{params[:query]}%")
      @banner = false
    else
      @artworks = Artwork.all
      @banner = true
    end

    @favourite = Favourite.new
    @collections = current_user ? current_user.collections : []
    @like = Like.new
    @top_tags = ActsAsTaggableOn::Tag.most_used(10)
  end

  def profile
    @artist = User.find(params[:id])
    @artworks = Artwork.all.select {|artwork| artwork.user == @artist}
    @follow = Follow.new
    @favourite = Favourite.new
    @collections = current_user.collections
    @like = Like.new
    
  end

  private

  def set_user
    @artist = User.find(params[:id])
  end

end

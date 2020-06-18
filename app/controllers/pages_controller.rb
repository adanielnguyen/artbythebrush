class PagesController < ApplicationController
  before_action :set_user, only: %i[profile]

  def home
    if params[:tag].present?
      @artworks = Artwork.tagged_with(params[:tag])
    elsif params[:query].present?
      @artworks = Artwork.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @artworks = Artwork.all
    end

    @favourite = Favourite.new
    @collections = current_user.collections || []
    @like = Like.new
    @top_tags = ActsAsTaggableOn::Tag.most_used(10)
  end

  def profile
    @artworks = Artwork.all.select {|artwork| artwork.user == current_user}
    @follow = Follow.new
    @favourite = Favourite.new
    @like = Like.new
  end
  
  private

  def set_user
    @artist = User.find(params[:id])
  end

end

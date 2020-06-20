class LikesController < ApplicationController
  before_action :set_artwork, only: %i[create]
  before_action :set_like, only: %i[destroy]

  def create
    @like = Like.new
    @like.user = current_user
    @like.artwork = @artwork
    @like.save
  end

  def destroy
    @like.destroy

    # no need for app/views/favourites/destroy.html.erb
    redirect_to root_path
  end

  private

  def set_artwork
    @artwork = Artwork.find(params[:artwork_id])
  end

  def set_like
    @like = Like.find(params[:id])
  end
end

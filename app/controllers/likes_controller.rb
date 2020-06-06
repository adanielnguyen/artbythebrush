class LikesController < ApplicationController
    def create
    @like = Like.new
    @artwork = Artwork.find(params[:artwork_id])
    @like.user = current_user
    @like.artwork = @artwork

    if @like.save
      redirect_to root_path
    else
      render 'home'
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy

    # no need for app/views/favourites/destroy.html.erb
    redirect_to root_path
  end
end

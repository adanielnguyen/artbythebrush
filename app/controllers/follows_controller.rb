class FollowsController < ApplicationController
  def button
    @follow = Follow.find(params[:fan_id])
    @follow.save
  end

  def index
    @follows = Follow.current_user.followed_relationships.all
  end

  def create
    raise
    @follow = Follow.new
    @follow.fan_id = current_user.id

    if @follow.save
      redirect_to user_path
    end
  end
end

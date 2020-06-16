class FollowsController < ApplicationController
  before_action :set_follow, only: %i[button]
  
  def button
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

  private

  def set_follow
    @follow = Follow.find(params[:fan_id])
  end
end

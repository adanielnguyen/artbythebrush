class FollowsController < ApplicationController
  before_action :set_follow, only: %i[button]

  def button
    @follow.save
  end

  def index
    @follows = Follow.current_user.followed_relationships.all
  end

  def new

  end

  def create
    @follow = Follow.new
    @follow.fan = current_user
    @follow.record = User.find(params[:user_id])
    @follow.save
  end

  private

  def set_follow
    @follow = Follow.find(params[:fan_id])
  end
end

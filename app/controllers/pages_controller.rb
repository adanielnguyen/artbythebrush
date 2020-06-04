class PagesController < ApplicationController
  def home
  end

  def profile
    @artist = User.find(params[:id])
    @follow = Follow.new
  end
end

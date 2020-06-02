class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

  def show
    
  end
end

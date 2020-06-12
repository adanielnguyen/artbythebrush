class ArtworkTagsController < ApplicationController
  def new
    @artwork_tag = ArtworkTag.new
    @artwork = Artwork.find(params[:artwork_id])
  end

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @tags = Tag.where(id: params[:artwork_tag][:tag])
    @tags.each do |tag|
      @artwork_tag = ArtworkTag.new(artwork: @artwork, tag: tag)
      @artwork_tag.save
    end
    redirect_to artwork_path(@artwork.)
  end

end

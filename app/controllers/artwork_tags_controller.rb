class ArtworkTagsController < ApplicationController
  before_action :set_artwork_tags, only: %i[new create]

  def new
    @artwork_tag = ArtworkTag.new
  end

  def create
    @tags = Tag.where(id: params[:artwork_tag][:tag])
    @tags.each do |tag|
      @artwork_tag = ArtworkTag.new(artwork: @artwork, tag: tag)
      @artwork_tag.save
    end
    redirect_to artwork_path(@artwork)
  end

  private

  def set_artwork_tags
    @artwork = Artwork.find(params[:artwork_id])
  end
end

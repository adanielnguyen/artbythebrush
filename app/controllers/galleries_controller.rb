class GalleriesController < ApplicationController
  before_action :set_gallery, only: %i[show update edit destroy]
  def index
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
    @artworks = Artwork.all.select { |artwork| artwork.user == current_user}
  end

  def show
    @gallery = Gallery.find(params[:id])
    @curates = Curate.all 
    @artworks = Artwork.all
    #@artworks = Artwork.where(params[:post]["artwork_ids"])
    #@artworks = Artwork.all.select { |artwork| curates.artwork == curate}
  #   @curates.each |curate|
  #     if curate.gallery = @gallery
  #       @curate.artwork = Artwork.find(id)
  #     end
  #   end
  #   @artworks = Artwork.all.select { |artwork| curates.artwork == curate}
  end
 

  def create
    @gallery = Gallery.new(gallery_params)
    @gallery.user = current_user

    if @gallery.save
        params[:post]["artwork_ids"].each do |id|
          @curate = Curate.new
          @curate.gallery = @gallery
          @curate.artwork = Artwork.find(id)
        end
      redirect_to gallery_path(@gallery)
    else
      render "new"
    end
  end

  def update
    @gallery.update(gallery_params)

    redirect_to gallery_path
  end

  def edit
  end  

  def destroy
    @gallery.destroy
  end

  private

  def set_gallery
    @gallery = Gallery.find(params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:start_date, :end_date, :description, :name, images: [])
  end
end

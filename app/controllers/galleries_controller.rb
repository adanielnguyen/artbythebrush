class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
    @artworks = Artwork.all.select { |artwork| artwork.user == current_user}
  end

  def show
    @gallery = Gallery.find(params[:id])
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
      raise
      redirect_to gallery_path(@gallery)
    else
      render "new"
    end
  end

  def update
    @gallery = Gallery.find(params[:id])
    @gallery.update(gallery_params)

    redirect_to gallery_path
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end  

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
  end

  private

  def gallery_params
    params.require(:gallery).permit(:start_date, :end_date, :description, :name, images: [])
  end
end

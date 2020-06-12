class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def create
    @gallery = Gallery.new(gallery_params)
    @gallery.user = current_user

    if @gallery.save
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

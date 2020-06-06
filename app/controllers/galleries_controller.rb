class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
  end

  def new
    @user = User.find(params[:dj_id])
    @gallery = Gallery.new
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def create
    @gallery = Gallery.new(gallery_params)

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
    params.require(:gallery_params).permit(:start_date, :end_date, :description)
  end
end
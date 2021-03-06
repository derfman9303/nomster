class PhotosController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :edit]

  def new
    @photo = Photo.new
  end

  def create 
    @place = Place.find(params[:place_id])
    @photo = @place.photos.create(photo_params)
    if @photo.valid?
      redirect_to place_path(@place)
    else
      render plain: 'The information you entered is invalid', status: :unprocessable_entity
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end

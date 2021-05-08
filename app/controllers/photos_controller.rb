class PhotosController < ApplicationController

  before_action :set_photo, only:[:show, :edit, :update]
  before_action :redirect_if_not_logged_in

  def index 
    @photos = Photo.all
   
  end 

  def new
    @photo = Photo.new
  end

  def create 
    @photo = current_user.photos.build(photo_params)
    if @photo.save
      redirect_to photo_path(@photo)
    else
      render :new
    end
  end 

  def show 
    @photo = Photo.find(params[:id])
  end 

  def edit 
  
  end 

  def update 
    if @photo.update(photo_params)
      redirect_to photo_path(@photo)
    else
    render :edit
    end 
  end 

private

  def photo_params
    params.require(:photo).permit(:image, :title, :caption, :location, :category, :notes, :user_id)
  end 

  def set_photo
    @photo = Photo.find_by_id(params[:id])
    redirect_to photo_path if !@photo 
  end

end

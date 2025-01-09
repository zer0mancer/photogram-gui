class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all
    @list_of_photos = matching_photos.order({:photos => :desc })
    render({:template => "photo_templates/index"})
  end

  def details
    photo_id = params.fetch("path_id")
   matching_photos =  Photo.where({:id => photo_id})

   @the_photo = matching_photos.at(0)

    render({:template => "photo_templates/details"})

  end

  def destroy
    the_id = params.fetch("path_id")

    matching_photo = Photo.where({:id => the_id})

    the_photo = matching_photo.at(0)

    the_photo.destroy

    redirect_to("/photos")

  end


end 

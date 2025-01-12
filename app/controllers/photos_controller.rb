class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all
    @list_of_photos = matching_photos.order({:photos => :asc })
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

  def create
    input_image = params.fetch("image_box")
    input_caption = params.fetch("caption_box")
    input_owner_id = params.fetch("owner_id_box")

    new_photo = Photo.new
    new_photo.image = input_image
    new_photo.caption = input_caption
    new_photo.owner_id = input_owner_id

    new_photo.save

    redirect_to("/photos/#{new_photo.id}")

  end

  def update

    the_id = params.fetch("path_id")

    matching_photo = Photo.where({:id => the_id})
    the_photo = matching_photo.at(0)


    input_image = params.fetch("photo_image")
    input_caption = params.fetch("photo_caption")

    the_photo.image = input_image
    the_photo.caption = input_caption

    the_photo.save

    redirect_to("/photos/#{the_photo.id}")

  end



end 

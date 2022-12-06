class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all.order(created_at: :desc)
    render(template: "photos_html/index")
  end

  def show
    @my_photo_id = params.fetch("photo_id")
    @the_photo = Photo.where(id: @my_photo_id).first

    if @the_photo == nil
      redirect_to("/404")
    else
      render(template: "photos_html/show")
    end
  end
end

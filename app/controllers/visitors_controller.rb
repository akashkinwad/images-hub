class VisitorsController < ApplicationController
  def index
    @photos = Photo.with_preloaded_image.last(25)
  end

  def album
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
    @photos = @album.photos.with_preloaded_image
  end
end

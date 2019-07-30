class AlbumsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  def index
    @albums = @user.albums
  end

  def new
    @album = @user.albums.new
    @album.photos.build
  end

  def create
    @album = @user.albums.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to user_albums_path(@user), notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @photos = @album.photos
  end

  def edit
    @album.photos.build
  end

  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to user_albums_path(@user), notice: 'Album was successfully updated.' }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to user_albums_path(@user), notice: 'Album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.require(:album).permit(
        :title,
        photos_attributes: [:tagline, :image, :user_id, :_destroy, :id]
      )
    end

    def set_user
      @user = current_user
    end

end

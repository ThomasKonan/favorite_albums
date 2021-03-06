class Api::AlbumsController < ApplicationController
  def index
    @albums = Album.all
    render "index.json.jb"
  end

  def create
    @album = Album.new(
      title: params[:title],
      artist: params[:artist],
      year: params[:year],
    )
    @album.save
    render "show.json.jb"
  end

  def show
    @album = Album.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @album = Album.find_by(id: params[:id])
    @album.title = params[:title] || album.title
    @album.artist = params[:artist] || album.artist
    @album.year = params[:year] || album.year
    @album.save
    render "show.json.jb"
  end

  def destroy
    @album = Album.find_by(id: params[:id])
    @album.destroy
    render json: {message: "Album has been successfully destroyed."}
  end
end

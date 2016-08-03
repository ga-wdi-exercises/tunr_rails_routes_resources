class SongsController < ApplicationController
  # index
  def index
      @artist = Artist.find(params[:artist_id])
      @songs = @artist.songs
  end
  def all_songs
    @songs = Song.all
  end

  # new
  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build
  end

  # create
  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.create!(song_params)

    redirect_to artist_path(@artist)
  end

  #show
  def show
    @song = Song.find(params[:id])
  end

  # edit
  def edit
    @song = Song.find(params[:id])
  end

  # update
  def update
    @song = Song.find(params[:id])
    @song.update(song_params)

    redirect_to artist_song_path(@song.artist, @song)
  end

  # destroy
  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to songs_path
  end

  private
  def song_params
    params.require(:song).permit(:title, :album, :preview_url)
  end
end

class SongsController < ApplicationController


  def new
    @song = Song.new
  end

  def show
    @song = @artist.songs.new(song_params)
    @song = Song.new
  end


  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.create(song_params)

  end



  def destroy
    @song = Song.find(params[:id])
    @song.destroy
  end


  private

  def find_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end

end

class SongsController < ApplicationController

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build
  end

  def create
    @artist = Artist.find(params[:artist_id])

    @song = @artist.songs.build(song_params)
    if @song.save
      redirect_to artist_path(@artist), notice: "Song created"
    else
      render 'new'
    end
  end

  def update
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])
  end

  def destroy
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])

    if @song.destroy
      redirect_to artist_path(@artist)
    else
      render 'new'
  end
end

  private

  def set_song
  @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title)
  end

end

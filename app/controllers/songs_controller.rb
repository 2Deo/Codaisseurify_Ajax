class SongsController < ApplicationController
  # before_action :find_artist, only: [:create]

    def new
      @song = Song.new
    end

    def create
      @artist = Artist.find(params[:artist_id])
      Song.create(song_params)

      respond_to do |format|
      format.html { redirect_to @artist }
      format.js { }
    end
  end

    # @artist = Artist.find(params[:artist_id])
    # @song = @artist.songs.new(song_params)

    # if @song.save
    #   redirect_to @artist
    # else
    #   render :new
    # end

  #   respond_to do |format|
  #     if @song.save
  #       format.html { redirect_to @artist}
  #       format.json { render :show, status: :created, location: @song }
  #       format.js
  #     else
  #       format.html { render :new }
  #       format.json { render json: @song.errors, status: unprocessable_entity }
  #       format.js
  #     end
  #   end
  # end


  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    respond_to do |format|
      if @song.destroy
        format.html { redirect_to @song.artist}
        format.json { render :show, status: :deleted, location: @song }
        format.js
      end
    end
  end


  private

  def find_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    song_params = params.require(:song).permit(:title, :artist_id)
  end

end

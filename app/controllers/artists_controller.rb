class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :create, :destroy]

    def index
      @artists = Artist.all
    end

    def show
      @songs = @artist.songs
    end

    def create
      @songs = @artist.songs
    end

    def destroy
      @artist.destroy
      redirect_to artists_path
    end

    private

    def find_artist
      @artist = Artist.find(params[:id])
    end
end

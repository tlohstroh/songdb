class ArtistsController < ApplicationController

  def index
    # @artists = Artist.order_by_name
    if params[:sort]
      # @artists = Artist.order(params[:sort] + " " + params[:direction])
      @artists = Artist.order ("#{params[:sort]} #{params[:direction]}")
    else
      @artists = Artist.order_by_name
    end

  end

  def show
    @artist = Artist.find(params[:id])
    @songs = Song.all
  end

end

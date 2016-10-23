class ArtistsController < ApplicationController

  def index
    @artists = Artist.order_by_name
  end

  def show
    @artist = Artist.find(params[:id])
  end

end

class ArtistsController < ApplicationController

  def index
    @artists = Artist.order_by_name
  end

end

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

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new( artist_params )

    if @artist.save
      redirect_to artist_path(@artist), notice: "Artist succesfully created"
    else
      render :new
    end
  end


  def edit
    @artist = Artist.find[:id]
  end

  def update
    if @artist.update( artist_params )
      redirect_to artist_path(@artist), notice: "Artist succesfully updated"
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to artists_path

  end

  private

  def artist_params
    prams.require(:artist).permit(:name, :img_url)

  end


end

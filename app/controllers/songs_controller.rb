class SongsController < ApplicationController
    before_action :set_song, only: [:edit, :update, :show, :destroy]
    # before_action :set_artist, only: [ :edit, :update,  :destroy]


  def index
    @songs  = Song.all
  end

  def show
    artist_id = @song.artist_id
    @artist = Artist.find(artist_id)

  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    artist_id = @song.artist_id
    @artist = Artist.find(artist_id)
    @songs = @artist.songs
      if @song.save
        respond_to do |format|
          format.html {redirect_to artist_path(@artist),notice: "Song succesfully created!" }
          format.js
        end

        # redirect_to artist_path(@artist), {notice: "Song succesfully created!" }
        #redirect_to song_path(@song), notice: "Song succesfully created"
      else
        render :edit
      end
  end



  def edit
  end

  def update

    if @song.update_attributes( song_params )
      redirect_to song_path(@song), notice: "Song succesfully updated"
    else
      render :edit
    end

  end

  def destroy
    artist_id = @song.artist_id
    @artist = Artist.find(artist_id)
    @song.destroy

    redirect_to artist_path(@artist)

  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id)

  end

  def set_song
    @song = Song.find(params[:id])
  end

  def set_artist
    @artist = @song.artist
  end

end

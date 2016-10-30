class SongsController < ApplicationController
    before_action :set_song, only: [:edit, :update, :show, :destroy]
    before_action :set_artist, only: [ :edit, :update, :show, :destroy]


  # GET /todos
  # GET /todos.json
  def index
    @songs  = Song.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @songs.artist
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    artist_id = @song.artist_id
    @artist = Artist.find(artist_id)
    respond_to do |format|
      if @song.save
        # I copied thsi from todo_ajax, don't understand it yet.
        format.html { redirect_to artist_path(@artist), notice: "Song succesfully created!" }
        format.json { render :show, status: :created, location: @song }
      # redirect_to song_path(@song), notice: "Song succesfully created"
      else
        # render :edit
        format.html { render :edit }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
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

    @song.destroy

    redirect_to songs_path

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

class SongsController < ApplicationController
  def index
    @songs  = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to edit_song_path, notice: "Song succesfully created"
    else
      render 'new'
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    if @song.update_attributes( song_params )
      redirect_to edit_song_path(@song), notice: "Song succesfully updated"
    else
      render 'edit'
    end

  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to songs_path

  end

  private

  def song_params
    params.require(:song).permit(:name, :artist)

  end

end

class PlaylistsController < ApplicationController
  def new
    # create a new playlist: (url, time, weather)
    
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def create
    @playlist = Playlist.new(playlist_params)
    
    @playlist.save
    redirect_to root_url
    # render plain: params[:playlist].inspect
  end

  private def playlist_params
    params.require(:playlist).permit(:title, :url, :timeOfDay, :typeOfWeather)
  end
end

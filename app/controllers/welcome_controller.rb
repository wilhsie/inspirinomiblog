class WelcomeController < ApplicationController
  def index
    
    #   set playlist based on weather and time of day, use switch
    
    #   cache API calls to wunderground, save for 60 seconds
    #   perhaps write seperate function to cache...
    
    @playlist = Playlist.where(typeOfWeather: 'rainy', timeOfDay: 'twilight').take

    #@latLng = [params[:lat], params[:lng]]  
  
    if cookies[:latLng] != nil
      @latLng = cookies[:latLng].split("|")
      #  call wunderground API
      
    end
  end

end

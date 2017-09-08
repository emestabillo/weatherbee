class WeatherController < ApplicationController
  
  def show
    @weather = Weather.last
    @weatherbee = @weather.get_weather
    @current_weather = @weatherbee.currently
  end

  def create
    puts 'Creating!'
    @weather = Weather.new
    @weather = Weather.create(weather_params)
    if @weather.save
      redirect_to weather_path
    else
      redirect_to root_path, alert: "Please enter valid address"
    end
  end

  private

  def weather_params
    params.require(:weather).permit(:address)
  end
end

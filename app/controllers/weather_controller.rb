class WeatherController < ApplicationController
  def show       
    @weather = Weather.last
    @current_weather = @weather.get_weather.currently
  end

  def create
    Weather.create(weather_params)
    redirect_to weather_path
  end

  private

  def weather_params
    params.require(:weather).permit(:address)
  end
end

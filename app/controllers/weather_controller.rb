class WeatherController < ApplicationController
  def show
    @weather = weather.get_weather
    @current_weather = @weather.currently
  end
end

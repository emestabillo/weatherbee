class WeathersController < ApplicationController

  def home
  end
  
  def show       
    @weathers = Weather.find(params[:id])
    @weatherbee = @weathers.get_weather
    @current_weather = @weatherbee.currently
  end

  def create
    @weathers = Weather.create(weather_params)
    if @weathers.save
      redirect_to weather_path(@weathers)
    else
      render 'home', alert: "Please enter valid address"
    end
  end

  private

  def weather_params
    params.require(:weather).permit(:address)
  end
end

class Weather < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def get_weather
    ForecastIO.forecast(latitude, longitude)
  end

  
end

class WeatherController < ApplicationController
  def index
    if zipcode = cookies[:zipcode]
      redirect_to weather_search_path(zipcode: zipcode)
    end
  end

  def search
    if params[:zipcode] == "98101"
      @rain = true
    elsif params[:zipcode] == "94702"
      @rain = false
    end
  end
end

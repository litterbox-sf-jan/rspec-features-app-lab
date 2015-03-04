class WeatherController < ApplicationController
  def index
    if zipcode = cookies[:zipcode]
      redirect_to weather_search_path(zipcode: zipcode)
    end
  end

  def search
    zip = params[:zipcode]
    if zip == "98101"
      @rain = true
    elsif zip == "94702"
      @rain = false
    end

    cookies[:zipcode] = zip
  end
end

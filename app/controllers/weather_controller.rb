class WeatherController < ApplicationController
  def weather

  end

  def search
    if params[:zipcode] == "98101"
      @rain = true
    elsif params[:zipcode] == "94702"
      @rain = false
    end
  end
end

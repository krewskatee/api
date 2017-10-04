class ForecastsController < ApplicationController

  def index

    city = params[:city] || "chicago"
    state = params[:state] || "il"

    @forecast = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{city}%2C%20#{state}%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys").body
    @forecast_5 = @forecast["query"]["results"]["channel"]["item"]["forecast"][0..4]
  end


end
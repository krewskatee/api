class InspectionController < ApplicationController

  def index
    @inspections = Unirest.get("https://data.cityofchicago.org/resource/ucdv-yd74.json").body
  end

end

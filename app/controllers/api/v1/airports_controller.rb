class Api::V1::AirportsController < ApplicationController
  def index
    if params[:search]
      # string is present anywhere in a record in our airports table, and then grab that particular record
      @airports = Airport.where("lower(city) LIKE ? OR lower(code) LIKE ?", "#{params[:search].downcase}%", "#{params[:search].downcase}%").limit(10)
    else
      @airports = Airport.all
    end
    render json: @airports
  end 
end

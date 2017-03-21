class ResultsController < ApplicationController



  def index

    # originplace = params[:originplace]

    


    # @create_session = Unirest.post("http://partners.api.skyscanner.net/apiservices/pricing/v1.0", headers:{"Content-Type" => "application/x-www-form-urlencoded", "Accept" => "application/json"}, parameters:{:cabinclass => "Economy", :country => "US", :currency => "USD", :locale => "en-US", :locationSchema => "iata", :originplace => "SFO", :destinationplace => "LAS", :outbounddate => "2017-05-30", :adults => "1", :children => "0", :infants => "0", :apikey => "prtl6749387986743898559646983194"})

    # @location_key = @create_session.headers[:location]

    # @session_key = @location_key[64..-1]


    # @polling_session = Unirest.get("http://partners.api.skyscanner.net/apiservices/pricing/uk2/v1.0/#{@session_key}?apikey=prtl6749387986743898559646983194", headers:{"Accept" => "application/json"})





  end


  def create

    @originplace = params[:originplace] 

    redirect_to "/results"
    
  end


end

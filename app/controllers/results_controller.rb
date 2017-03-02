class ResultsController < ApplicationController



  def index

    originplace = params[:originplace]

    @result = Unirest.post("http://partners.api.skyscanner.net/apiservices/pricing/v1.0", headers:{"Content-Type" => "application/x-www-form-urlencoded", "Accept" => "application/json"}, parameters:{"country" => "US", "currency" => "USD", "locale" => "en-US", "originplace" => "SFO", "destinationplace" => "LAS", "outbounddate" => "2017-07-30", "adults" => "1", "apikey" => "ac247803387860118955818377712558"})

    @session_key = @result.body




    @quotes = Unirest.get("http://partners.api.skyscanner.net/apiservices/browseroutes/v1.0/US/USD/en-US/"+originplace+"/LAS/2017-03-15?apiKey=ac247803387860118955818377712558", headers:{"Accept" => "application/json"})



  end


  def create

    @originplace = params[:originplace] 

    redirect_to "/results"
    
  end


end

class ResultsController < ApplicationController



  def index

    originplace = params[:originplace]


    #Sabre Option :@results = Unirest.get("https://api.test.sabre.com/v1/shop/flights?origin=SFO&destination=LAS&departuredate=2017-03-07&returndate=2017-03-10&onlineitinerariesonly=N&limit=10&offset=1&eticketsonly=N&sortby=totalfare&order=asc&sortby2=departuretime&order2=asc&pointofsalecountry=US", headers:{"Authorization" => "Bearer T1RLAQIR1xYwlyEqr1aG4IjwLgaGL2HWWBApO6JuLB0/u+JZnY09u/67AADAALIZv5zs2auQiztYbUOLDw3JAL6j7cfBvAgkLEiXoM4XZN3yyaTdVVKWOimHZ5E+46THX2Rd+MAR/DUdFn6mKW35d/QWwfv0iteXziZEtz0OSfWrKpiSLv9h/l83iqz+WLW0ZKWJGvjbKWc9XlWMQC0g64GpVbxG2QVT4oN1jYk7q2kXvH+SzZTVAiAnHJW4aZLkVxh4EQ20bczSsQnjcJU/DuvKDAXB7w/7Iua0FR0dLIhVo6mGU7sFVE11b7h3", "X-Originating-Ip" => "12.51.130.51"})

    




    #Cache Price Option: @quotes = Unirest.get("http://partners.api.skyscanner.net/apiservices/browseroutes/v1.0/US/USD/en-US/"+originplace+"/LAS/2017-03-15?apiKey=ac247803387860118955818377712558", headers:{"Accept" => "application/json"})


    @create_session = Unirest.post("http://partners.api.skyscanner.net/apiservices/pricing/v1.0", headers:{"Content-Type" => "application/x-www-form-urlencoded", "Accept" => "application/json"}, parameters:{:cabinclass => "Economy", :country => "US", :currency => "USD", :locale => "en-US", :locationSchema => "iata", :originplace => "SFO", :destinationplace => "LAS", :outbounddate => "2017-05-30", :inbounddate => "2017-06-02", :adults => "1", :children => "0", :infants => "0", :apikey => "prtl6749387986743898559646983194"})







  end


  def create

    @originplace = params[:originplace] 

    redirect_to "/results"
    
  end


end

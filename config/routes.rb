Rails.application.routes.draw do

  get "/signup" => "users#new"

  post "/users" => "users#create"

  get "/login" => "sessions#new"

  post "/login" => "sessions#create"
  
  get "/logout" => "sessions#destroy"




  get '/' => 'results#index'

  post '/results' => 'results#create'

  

  get '/reviews' => 'reviews#index'

  get '/reviews/new' => 'reviews#new'

  post "/reviews" => "reviews#create"

  get "/reviews/:id" =>
  "reviews#show"

  get "/reviews/:id/edit" => "reviews#edit"

  patch "/reviews/:id" => "reviews#update"

  delete "/reviews/:id" => "reviews#destory"




  get '/places' => 'places#index'

  get '/places/new' => 'places#new'

  post "/places" => "places#create"

  get "/places/:id" =>
  "places#show"

  get "/places/:id/edit" => "places#edit"

  patch "/places/:id" => "places#update"

  delete "/places/:id" => "places#destory"


  get 'myreviews' => 'myreviews#index'

  namespace :api do 
    namespace :v1 do
      get "/airports" => 'airports#index'
    end
  end
end

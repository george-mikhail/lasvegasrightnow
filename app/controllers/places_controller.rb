class PlacesController < ApplicationController

  def index

    @places = Place.all
    
  end

  def new
    
  end

  def create

    @place = Place.create(
      name: params[:name],
      image_url: params[:image_url],
      category: params[:category])

    @place.save

    redirect_to "places/#{@place.id}"
    
  end

  def show

    @place = Place.find_by(id: params[:id])
    
  end

  def edit

    @place = Place.find_by(id: params[:id])
    
  end

  def update

    place_id = params[:id]
    place = Place.find_by(id:place_id)
    product.name = params[:name]
    product.image_url = params[:image_url]
    place.save
    flash[:success] = "Place successfully updated!"
    redirect_to "/places/#{place.id}"
    
  end

  def destroy

    place_id = params[:id]
    place = Place.find_by(id:place_id)
    place.destory
    flash[:warning] = "Place successfully deleted!"
    redirect_to "/places"
    
  end


end

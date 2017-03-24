class ReviewsController < ApplicationController

  def index

    @reivew = Review.all
    @places = Place.all
    
  end

  def new
    
    
  end


  def create
    @review = Review.create(
      rating: params[:rating],
      description: params[:description],
      user_id: current_user.id,
      place_id: params[:place_id]
      )

    if @review.save
      redirect_to "/places/#{params[:place_id]}"
    else
      flash[:warning] = "Review cannot be lower than 1 or greater than 5"
      redirect_to "/places/#{params[:place_id]}/reviews/new"
    end
  end


  def show
    @review = Review.find_by(id: params[:id])
    
  end

  def edit
    @review = Review.find_by(id: params[:id])
    
  end

  def update

    review_id = params[:id]
    review = Review.find_by(id:review_id)
    review.rating = params[:rating]
    review.description = params[:description]
    if review.save
      redirect_to "/places/#{review.place.id}"
    else
      flash[:warning] = "Review cannot be lower than 1 or greater than 5"
      redirect_to "/reviews/#{review.id}/edit"
    end
  end

  def destroy

    review_id = params[:id]
    review = Review.find_by(id:review_id)
    review.destory
    flash[:warning] = "Review successfully deleted!"
    redirect_to "/reviews"
    
  end
end

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
      place_id: params[:place]['place_id']
      )

    @review.save
    
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
    review.save
    flash[:success] = "Review successfully updated!"
    redirect_to "/reviews/#{review.id}"
    
  end

  def destroy

    review_id = params[:id]
    review = Review.find_by(id:review_id)
    review.destory
    flash[:warning] = "Review successfully deleted!"
    redirect_to "/reviews"
    
  end
end

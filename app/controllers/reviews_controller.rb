class ReviewsController < ApplicationController
  def new
  end

  def create
    restaurant = Restaurant.find(params[:restaurant_id])
    rev = Review.create({ rating: params[:rating], comment: params[:comment], user_id: Thread.current[:user].id, restaurant_id: params[:restaurant_id] })
    p "this is it"
    p rev
    p params
    redirect_to restaurant
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def review_params_hash
    { rating: params[:rating], comment: params[:comment], user_id: Thread.current[:user].id, restaurant_id: params[:restaurant_id] }
  end

end

class ReviewsController < ApplicationController
  def new
  end

  def create
    Review.create(review_params_hash)
    redirect_to Restaurant.find(params[:restaurant_id])
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @current_user = current_user.id
    @review = Review.find(params[:id])
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy if review.user_id == current_user.id
    redirect_to Restaurant.find(params[:restaurant_id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params_hash)
      redirect_to Restaurant.find(params[:restaurant_id])
    else
      render 'edit'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def review_params_hash
    { rating: params[:review][:rating], comment: params[:review][:comment], user_id: current_user.id, restaurant_id: params[:restaurant_id] }
  end
end

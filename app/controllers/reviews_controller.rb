class ReviewsController < ApplicationController
  def new
  end

  def create
    rev = Review.create(review_params_hash)
    redirect_to Restaurant.find(params[:restaurant_id])
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to Restaurant.find(params[:restaurant_id])
  end

  def update
    @review = Review.find(params[:id])
    # p "LALAALALALALSSDAKASDL"
    # p @review.update(review_params_hash)
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
    { rating: params[:review][:rating], comment: params[:review][:comment], user_id: Thread.current[:user].id, restaurant_id: params[:restaurant_id] }
  end
end

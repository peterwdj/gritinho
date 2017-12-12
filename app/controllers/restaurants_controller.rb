class RestaurantsController < ApplicationController
  def new
  end

  def create
    Restaurant.create(name: params[:name], description: params[:description])
    redirect_to '/'
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.find_by restaurant_id: 1
  end


end

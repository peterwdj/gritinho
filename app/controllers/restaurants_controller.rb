class RestaurantsController < ApplicationController
  before_action :authenticate_user!

  def new	
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    Restaurant.create(restaurant_params_hash)
    redirect_to '/'
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.find_by restaurant_id: 1
  end

  def destroy
    Restaurant.find(params[:id]).destroy
    redirect_to '/'
  end


  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else
      render 'edit'
    end
  end

  private

  def restaurant_params_hash
    { name: params[:name], description: params[:description] }
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :description)
  end
end


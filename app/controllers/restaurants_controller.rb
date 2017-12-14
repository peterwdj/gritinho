class RestaurantsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def edit
    a = @restaurant = Restaurant.find(params[:id])
    b = @current_user = Thread.current[:user].id
  end

  def create
    Restaurant.create(restaurant_params_hash)
    redirect_to '/'
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @current_user = Thread.current[:user].id
    @reviews = Review.find_by restaurant_id: 1
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy if restaurant.user_id == Thread.current[:user].id
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
    { name: params[:name], description: params[:description], user_id: Thread.current[:user].id  }
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :description)
  end
end

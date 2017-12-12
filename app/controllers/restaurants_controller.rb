class RestaurantsController < ApplicationController
  before_action :authenticate_user!

  def new	
  end

  def create
    Restaurant.create(name: params[:name], description: params[:description])
    redirect_to '/'
  end
end

class RestaurantController < ApplicationController
  def new	
  end

  def create
	Restaurant.create(name: params[:name], description: params[:description])
	redirect_to :controller => 'homepage', :action => 'index'
  end
end

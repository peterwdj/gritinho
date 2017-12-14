class HomepageController < ApplicationController
  def index
  	# reset_session
    @restaurants = Restaurant.all
  end
end

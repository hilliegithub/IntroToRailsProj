class RestaurantController < ApplicationController
  def index
    @restaurants = Restaurant.order(:Cuisine).page(params[:page])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end

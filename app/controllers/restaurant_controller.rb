class RestaurantController < ApplicationController
  def index
    @restaurants = Restaurant.page(params[:page])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end

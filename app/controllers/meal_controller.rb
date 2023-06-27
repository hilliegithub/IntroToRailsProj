class MealController < ApplicationController
  def index
    @meals = Meal.page(params[:page])
  end

  def show
    @meal = Meal.find(params[:id])
  end
end

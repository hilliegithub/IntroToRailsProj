class SearchController < ApplicationController
  def index
    @searchterm = params[:query]
    @choosencuisine = params[:cuisine]

    if params[:cuisine] == "All"
      @restaurants = Restaurant.where("LOWER(RestaurantName) LIKE LOWER(?)", "%#{Restaurant.sanitize_sql_like(params[:query])}%")
    else
      @restaurants = Restaurant.where("LOWER(RestaurantName) LIKE LOWER(?) AND LOWER(Cuisine) = LOWER(?)", "%#{Restaurant.sanitize_sql_like(params[:query])}%", params[:cuisine])
    end
  end
end

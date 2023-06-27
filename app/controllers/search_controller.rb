class SearchController < ApplicationController
  def index
    @searchterm = params[:query]
    @choosencuisine = params[:cuisine]
  end
end

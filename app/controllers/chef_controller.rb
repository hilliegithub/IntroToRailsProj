class ChefController < ApplicationController
  def index
    @chefs = Chef.page(params[:page])
  end

  def show
    @chef = Chef.find(params[:id])
  end
end

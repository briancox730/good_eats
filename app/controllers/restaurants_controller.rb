class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all.includes(:category)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new
  end

  def list_ten
    @restaurants = Restaurant.all.includes(:category).last(10)
  end

end

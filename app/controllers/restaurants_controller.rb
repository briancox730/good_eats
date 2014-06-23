class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all.includes(:category).limit(20)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews.limit(10)
  end

  def new
    @restaurant = Restaurant.new
    @category = Category.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant
    else
      flash.now[:notice] = "Your restaurant was not succesfully submitted."
      redirect_to @restaurant
    end
  end

  def list_ten
    @restaurants = Restaurant.all.includes(:category).last(10)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zipcode, :description, :category_id)
  end

end

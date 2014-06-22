class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params["restaurant_id"])
    @review = Review.new(review_params)

    @review.restaurant_id = @restaurant.id

    if @review.save
      redirect_to @restaurant
    else
      flash.now[:notice] = "Your review was not succesfully submitted."
      redirect_to @restaurant
    end
  end

  private

  def review_params
      params.require(:review).permit(:rating, :body)
  end
end

class CategoriesController < ApplicationController
  def new
    binding.pry
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)

    if @category.save
      flash[:notice] = "Your category has been saved."
      redirect_to new_restaurant_path
    else
      flash.now[:notice] = "Your restaurant was not succesfully submitted."
      redirect_to new_restaurant_path
    end

  end

  private

  def category_params
    params.require(:category).permit(:category)
  end
end

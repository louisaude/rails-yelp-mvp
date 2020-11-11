class ReviewsController < ApplicationController
    before_action :find_restaurant, except: [:destroy]

  def new
    @review = Review.new
  end

private

def find_restaurant
  @restaurant = Retaurant.find(params[:restaurant_id])
end

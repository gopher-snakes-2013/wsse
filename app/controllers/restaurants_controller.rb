class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])

    if @restaurant.save
      render :json => {:restaurant_template => render_to_string(partial: 'partials/restaurant_name', locals: {restaurant: @restaurant})}
    else
      render :json => @restaurant.errors.full_messages.join(', '), :status => :unprocessable_entity
    end

  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @comment = @restaurant.comments.new
  end
end


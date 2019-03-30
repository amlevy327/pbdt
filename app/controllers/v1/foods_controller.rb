class V1::FoodsController < ApplicationController
  before_action :authenticate_user!

  def index
    @foods = current_user.foods.all.order('updated_at DESC')
    render json: @foods, status: :ok
  end
  
  def show
    @food = current_user.foods.find(params[:id])
    render json: @food, status: :ok
  end

  def create
    @food = current_user.foods.new(food_params)
    if @food.save
      render json: @food, status: :ok
    else
      render json: @food.errors, status: :unprocessable_identity
    end
  end

  def destroy
    @food = current_user.foods.find(params[:id])
    if @food.destroy
      head(:ok)
    else
      head(:unprocessable_identity)
    end
  end

  private
  
  def food_params
    params.require(:food).permit(:name, :variety)
  end
end

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
    @food = current_user.foods.new(new_food_params)
    if @food.save
      render json: @food, status: :ok
    else
      render json: @food.errors, status: :unprocessable_identity
    end
  end

  def update
    current_user.foods.where(id: params[:id]).update(update_food_params)
    if current_user.save
      @food = current_user.foods.where(id: params[:id])
      render json: @food, status: :ok
    else
      render json: current_user.errors, status: :unprocessable_identity
    end
  end

  def destroy
    @food = current_user.foods.find(params[:id])
    if @food.destroy
      render json: @food, status: :ok
    else
      render json: @food.errors, status: :unprocessable_identity
    end
  end

  private
  
  def new_food_params
    params.require(:food).permit(:name, :variety, :servings_t, :ss_amt_wt_t, :ss_unit_wt_t,
      :ss_amt_vol_t, :ss_unit_vol_t, :log_date,
      :beans_t, :berries_t, :other_fruits_t, :cruciferous_vegetables_t, :greens_t,
      :other_vegetables_t, :flaxseeds_t, :nuts_t, :turmeric_t, :whole_grains_t, :other_seeds_t,
      :cals_t, :fat_t, :carbs_t, :protein_t)
  end

  def update_food_params
    params.require(:food).permit(:servings_t, :ss_amt_wt_t, :ss_amt_vol_t, :log_date,
      :beans_t, :berries_t, :other_fruits_t, :cruciferous_vegetables_t, :greens_t,
      :other_vegetables_t, :flaxseeds_t, :nuts_t, :turmeric_t, :whole_grains_t, :other_seeds_t,
      :cals_t, :fat_t, :carbs_t, :protein_t)
  end
end

class V1::RecipesController < ApplicationController
  before_action :authenticate_user!

  def show
    @recipe = current_user.recipes.where(id: params[:id])
    render json: @recipe, status: :ok
  end

  def index
    @recipe = current_user.recipes.order('updated_at DESC')
    render json: @recipe, status: :ok
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)
    if @recipe.save
      render json: @recipe, status: :created
    else
      render json: @recipe.errors, status: :unprocessable_identity
    end
  end

  def update
    current_user.recipes.where(id: params[:id]).update(recipe_params)
    if current_user.save
      @recipe = current_user.recipes.where(id: params[:id])
      render json: @recipe, status: :ok
    else
      render json: current_user.errors, status: :unprocessable_identity
    end
  end

  def destroy
    @recipe = current_user.recipes.find(params[:id])
    if @recipe.destroy
      render json: @recipe, status: :ok
    else
      render json: @recipe.errors, status: :unprocessable_identity
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :id, :name, :servings, :beans, :berries, :other_fruits, :cruciferous_vegetables, :greens,
      :other_vegetables, :flaxseeds, :nuts, :turmeric, :whole_grains, :other_seeds,
      :cals, :fat, :carbs, :protein)
  end
end

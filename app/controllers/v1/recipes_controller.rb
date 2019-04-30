class V1::RecipesController < ApplicationController
  before_action :authenticate_user!

  def show
    @recipe = current_user.recipes.where(id: params[:id])
    render json: @recipe, status: :ok
  end

  def index
    # if current_user
    #   @recipe = current_user.recipes.order('updated_at DESC')
    #   render json: @recipe, status: :ok
    # else
    #   head(:unauthorized)
    # end

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

  def destroy
    @recipe = current_user.recipes.where(id: params[:id]).first

    if @recipe.destroy
      head(:ok)
    else
      head(:unprocessable_identity)
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :name, :servings, :beans, :berries, :other_fruits, :cruciferous_vegetables, :greens,
      :other_vegetables, :flaxseeds, :nuts, :turmeric, :whole_grains, :other_seeds,
      :cals, :fat, :carbs, :protein)
  end
end

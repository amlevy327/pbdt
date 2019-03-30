class V1::IngredientsController < ApplicationController
  before_action :authenticate_user!

  def create
    @recipe = current_user.recipes.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.new(ingredient_params)

    if @ingredient.save
      render json: @ingredient, status: :created
    else
      render json: @ingredient.errors, status: :unprocessable_identity
    end
  end

  def update
  end

  def destroy
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:recipe_id, :name, :servings_t)
  end
end

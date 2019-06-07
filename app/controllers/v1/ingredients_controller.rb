class V1::IngredientsController < ApplicationController
  before_action :authenticate_user!

  def create
    @recipe = current_user.recipes.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.new(ingredient_params)
    if @ingredient.save
      update_recipe
      if @recipe.save
        render json: @ingredient, status: :created
      else
        raise ActiveRecord::Rollback
        render json: @recipe.errors, status: :unprocessable_identity
      end
    else
      render json: @ingredient.errors, status: :unprocessable_identity
    end
  end

  def update
    current_user.ingredients.where(id: params[:id]).update(ingredient_params)
    if current_user.save
      @recipe = current_user.recipes.find(params[:recipe_id])
      update_recipe
      if @recipe.save
        @ingredient = current_user.ingredients.where(id: params[:id])
        render json: @ingredient, status: :ok
      else
        raise ActiveRecord::Rollback
        render json: @recipe.errors, status: :unprocessable_identity
      end
    else
      render json: current_user.errors, status: :unprocessable_identity
    end
  end

  def destroy
    @ingredient = current_user.recipes.find(params[:recipe_id]).ingredients.find(params[:id])
    if @ingredient.destroy
      render json: @ingredient, status: :ok
    else
      render json: @ingredient.errors, status: :unprocessable_identity
    end
  end

  private

  def update_recipe
    @recipe.beans = (@recipe.ingredients.pluck(:beans_t)).sum / @recipe.servings
    @recipe.berries = (@recipe.ingredients.pluck(:berries_t)).sum / @recipe.servings
    @recipe.other_fruits = (@recipe.ingredients.pluck(:other_fruits_t)).sum / @recipe.servings
    @recipe.cruciferous_vegetables = (@recipe.ingredients.pluck(:cruciferous_vegetables_t)).sum / @recipe.servings
    @recipe.greens = (@recipe.ingredients.pluck(:greens_t)).sum / @recipe.servings
    @recipe.other_vegetables = (@recipe.ingredients.pluck(:other_vegetables_t)).sum / @recipe.servings
    @recipe.flaxseeds = (@recipe.ingredients.pluck(:flaxseeds_t)).sum / @recipe.servings
    @recipe.nuts = (@recipe.ingredients.pluck(:nuts_t)).sum / @recipe.servings
    @recipe.turmeric = (@recipe.ingredients.pluck(:turmeric_t)).sum / @recipe.servings
    @recipe.whole_grains = (@recipe.ingredients.pluck(:whole_grains_t)).sum / @recipe.servings
    @recipe.other_seeds = (@recipe.ingredients.pluck(:other_seeds_t)).sum / @recipe.servings
    @recipe.cals = (@recipe.ingredients.pluck(:cals_t)).sum / @recipe.servings
    @recipe.fat = (@recipe.ingredients.pluck(:fat_t)).sum / @recipe.servings
    @recipe.carbs = (@recipe.ingredients.pluck(:carbs_t)).sum / @recipe.servings
    @recipe.protein = (@recipe.ingredients.pluck(:protein_t)).sum / @recipe.servings
  end

  def ingredient_params
    params.require(:ingredient).permit(:id, :recipe_id, :name, :variety, :servings_t, 
      :ss_amt_wt_t, :ss_amt_vol_t, :ss_unit_wt_t, :ss_unit_vol_t, :beans_t, :berries_t,
      :other_fruits_t, :cruciferous_vegetables_t, :greens_t, :other_vegetables_t, :flaxseeds_t,
      :nuts_t, :turmeric_t, :whole_grains_t, :other_seeds_t, :cals_t, :fat_t,
      :carbs_t, :protein_t)
  end
end

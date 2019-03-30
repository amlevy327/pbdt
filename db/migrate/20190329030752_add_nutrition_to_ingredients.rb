class AddNutritionToIngredients < ActiveRecord::Migration[5.2]
  def change

    add_column :ingredients, :name, :decimal
    add_column :ingredients, :servings_t, :decimal

    add_column :ingredients, :beans_t, :decimal
    add_column :ingredients, :berries_t, :decimal
    add_column :ingredients, :other_fruits_t, :decimal
    add_column :ingredients, :cruciferous_vegetables_t, :decimal
    add_column :ingredients, :greens_t, :decimal
    add_column :ingredients, :other_vegetables_t, :decimal
    add_column :ingredients, :flaxseeds_t, :decimal
    add_column :ingredients, :nuts_t, :decimal
    add_column :ingredients, :turmeric_t, :decimal
    add_column :ingredients, :whole_grains_t, :decimal
    add_column :ingredients, :other_seeds_t, :decimal
    
    add_column :ingredients, :cals_t, :decimal
    add_column :ingredients, :fat_t, :decimal
    add_column :ingredients, :carbs_t, :decimal
    add_column :ingredients, :protein_t, :decimal
  end
end

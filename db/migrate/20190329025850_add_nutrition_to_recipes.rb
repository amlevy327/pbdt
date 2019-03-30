class AddNutritionToRecipes < ActiveRecord::Migration[5.2]
  def change
    
    add_column :recipes, :beans, :decimal
    add_column :recipes, :berries, :decimal
    add_column :recipes, :other_fruits, :decimal
    add_column :recipes, :cruciferous_vegetables, :decimal
    add_column :recipes, :greens, :decimal
    add_column :recipes, :other_vegetables, :decimal
    add_column :recipes, :flaxseeds, :decimal
    add_column :recipes, :nuts, :decimal
    add_column :recipes, :turmeric, :decimal
    add_column :recipes, :whole_grains, :decimal
    add_column :recipes, :other_seeds, :decimal
    
    add_column :recipes, :cals, :decimal
    add_column :recipes, :fat, :decimal
    add_column :recipes, :carbs, :decimal
    add_column :recipes, :protein, :decimal
  end
end

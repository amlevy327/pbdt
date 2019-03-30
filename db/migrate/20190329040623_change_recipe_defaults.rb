class ChangeRecipeDefaults < ActiveRecord::Migration[5.2]
  def change

    change_column_default :recipes, :servings, 0

    change_column_default :recipes, :beans, 0
    change_column_default :recipes, :berries, 0
    change_column_default :recipes, :other_fruits, 0
    change_column_default :recipes, :cruciferous_vegetables, 0
    change_column_default :recipes, :greens, 0
    change_column_default :recipes, :other_vegetables, 0
    change_column_default :recipes, :flaxseeds, 0
    change_column_default :recipes, :nuts, 0
    change_column_default :recipes, :turmeric, 0
    change_column_default :recipes, :whole_grains, 0
    change_column_default :recipes, :other_seeds, 0
    
    change_column_default :recipes, :cals, 0
    change_column_default :recipes, :fat, 0
    change_column_default :recipes, :carbs, 0
    change_column_default :recipes, :protein, 0
  end
end

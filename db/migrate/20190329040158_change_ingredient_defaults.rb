class ChangeIngredientDefaults < ActiveRecord::Migration[5.2]
  def change

    change_column_default :ingredients, :servings_t, 0

    change_column_default :ingredients, :beans_t, 0
    change_column_default :ingredients, :berries_t, 0
    change_column_default :ingredients, :other_fruits_t, 0
    change_column_default :ingredients, :cruciferous_vegetables_t, 0
    change_column_default :ingredients, :greens_t, 0
    change_column_default :ingredients, :other_vegetables_t, 0
    change_column_default :ingredients, :flaxseeds_t, 0
    change_column_default :ingredients, :nuts_t, 0
    change_column_default :ingredients, :turmeric_t, 0
    change_column_default :ingredients, :whole_grains_t, 0
    change_column_default :ingredients, :other_seeds_t, 0
    
    change_column_default :ingredients, :cals_t, 0
    change_column_default :ingredients, :fat_t, 0
    change_column_default :ingredients, :carbs_t, 0
    change_column_default :ingredients, :protein_t, 0
  end
end

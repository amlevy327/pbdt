class ChangeFoodDeaults < ActiveRecord::Migration[5.2]
  def change

    change_column_default :foods, :servings_t, 0
    change_column_default :foods, :ss_amt_wt_t, 0
    change_column_default :foods, :ss_amt_vol_t, 0

    change_column_default :foods, :beans_t, 0
    change_column_default :foods, :berries_t, 0
    change_column_default :foods, :other_fruits_t, 0
    change_column_default :foods, :cruciferous_vegetables_t, 0
    change_column_default :foods, :greens_t, 0
    change_column_default :foods, :other_vegetables_t, 0
    change_column_default :foods, :flaxseeds_t, 0
    change_column_default :foods, :nuts_t, 0
    change_column_default :foods, :turmeric_t, 0
    change_column_default :foods, :whole_grains_t, 0
    change_column_default :foods, :other_seeds_t, 0
    
    change_column_default :foods, :cals_t, 0
    change_column_default :foods, :fat_t, 0
    change_column_default :foods, :carbs_t, 0
    change_column_default :foods, :protein_t, 0
  end
end
